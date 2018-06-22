#include <gst/gst.h>
#include <glib.h>
#include <gst/app/gstappsink.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <opencv/cv.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <thread>
#include <iostream>
#include <unistd.h>

#include <boost/thread/condition.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/thread/thread.hpp>
#include <boost/circular_buffer.hpp>

#define WIDTH 320
#define HEIGHT 240
#define FRAMERATE 30

#define FRAMESIZE 115200//WIDTH*HEIGHT*2

#define MARGIN 50

using namespace cv;
using namespace std;


/* Structure to contain all our information, so we can pass it to callbacks */
typedef struct _CustomData {
	GstElement *pipeline, *driver, *capsfilter, *mux, *appsink, *queue;

	guint64 num_samples;   /* Number of samples generated so far (for timestamp generation) */
	GstBuffer *buffer;

	guint sourceid;        /* To control the GSource */

	GMainLoop *main_loop;  /* GLib's Main Loop */
	
	circ_buffer<Mat> *bufptr;
} CustomData;

// Thread safe circular buffer 
template <typename T>
class circ_buffer : private boost::noncopyable
{
public:
    typedef boost::mutex::scoped_lock lock;
    circ_buffer() {}
    circ_buffer(int n) {cb.set_capacity(n);}
    void send (T imdata) {
        lock lk(monitor);
        cb.push_back(imdata);
        buffer_not_empty.notify_one();
    }
    T receive() {
        lock lk(monitor);
        while (cb.empty())
            buffer_not_empty.wait(lk);
        T imdata = cb.front();
        cb.pop_front();
        return imdata;
    }
    void clear() {
        lock lk(monitor);
        cb.clear();
    }
    int size() {
        lock lk(monitor);
        return cb.size();
    }
    void set_capacity(int capacity) {
        lock lk(monitor);
        cb.set_capacity(capacity);
    }
private:
    boost::condition buffer_not_empty;
    boost::mutex monitor;
    boost::circular_buffer<T> cb;
};



void showfeed(CustomData *data)
{
	namedWindow("window");
	circ_buffer<Mat> *ptr = data->bufptr;
	usleep(500000);

	Mat im;

	while(1)
	{
		im = ptr->receive();
		imshow("window", im);
		waitKey(15);
	}
}

void processImage(char *data)
{
	Mat img_rgb, img_th, img_hsv, img1, img2;
	Mat img(HEIGHT, WIDTH, CV_8UC2, data);
	cvtColor(img, img_rgb, CV_YUV2BGR_YUY2);
	cvtColor(img_rgb, img_hsv, CV_BGR2HSV);
	vector<vector<Point>> contours;
	vector<Vec4i> hierarchy;
	Point Center;

	inRange(img_hsv, Scalar(90, 130, 100), Scalar(130, 255,  255), img1);

	Mat Elem = getStructuringElement(MORPH_ELLIPSE, Size(10, 10));
	morphologyEx(img1, img1, MORPH_OPEN, Elem);

	findContours(img1, contours, hierarchy, CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE);

	int largest_area=0;
	int largest_contour_index=0;
	Rect bounding_rect;
	for( int i = 0; i< contours.size(); i++ ) // iterate through each contour. 
	{
		double a=contourArea( contours[i],false);  //  Find the area of contour
		if(a>largest_area){
			largest_area=a;
			largest_contour_index=i;                //Store the index of largest contour
			bounding_rect=boundingRect(contours[i]); // Find the bounding rectangle for biggest contour
		}
	}

	Center.x = bounding_rect.x+bounding_rect.width/2;
	Center.y = bounding_rect.y+bounding_rect.height/2;


	Scalar color( 255,255,255);
	drawContours(img_rgb, contours,largest_contour_index, color, 1, 8, hierarchy);
	circle(img_rgb, Center, 2, color, -1, 8, 0);

	//Determine motor directions
	if(largest_area == 0)		//No blob found
		printf("No blob found\r\n");
	else
	{
		if(Center.x < WIDTH/2 - MARGIN)
			printf("Turn Pan left\r\n");
		else if(Center.x > WIDTH/2 + MARGIN)
			printf("Turn Pan right\r\n");
		else
			printf("Stop turning Pan\r\n");
		if(Center.y  < HEIGHT/2 - MARGIN)
			printf("Turn Tilt up\r\n");
		else if(Center.y > HEIGHT/2 + MARGIN)
			printf("Turn Tilt down\r\n");
		else
			printf("Stop turning Tilt\r\n"); 
	}

	cvtColor(img1, img1, CV_GRAY2BGR);
	bitwise_and(img_rgb, img1, img2);

	data->bufptr->send(img_rgb);
}

static GstFlowReturn new_sample (GstElement *sink, CustomData *data) {
	GstSample *sample;
	GstBuffer *buffer;
	GstFlowReturn ret;
	GstMapInfo info;
	uint16_t d[WIDTH*HEIGHT];
	/* Retrieve the buffer */
	g_signal_emit_by_name (sink, "pull-sample", &sample);
	if (sample) 
	{

		buffer = gst_sample_get_buffer(sample);
		gst_buffer_map(buffer, &info, GST_MAP_READ);
		//g_print("Size: %d\r\n", strlen((const char *)info.data));
		/*Image processing part*/
		processImage((char *)info.data);

		/*End of image processing part.*/
		//g_print("*");

		gst_sample_unref (sample);
		ret = GST_FLOW_OK;
	}
	else{
		ret = GST_FLOW_ERROR;
	}
	return ret;


}


static gboolean bus_call (GstBus *bus, GstMessage *msg, gpointer data)
{
	GMainLoop *loop = (GMainLoop *) data;

	switch (GST_MESSAGE_TYPE (msg)) {

		case GST_MESSAGE_EOS:
			g_print ("End of stream\n");
			g_main_loop_quit (loop);
		break;

		case GST_MESSAGE_ERROR: {
			gchar  *debug;
			GError *error;

			gst_message_parse_error (msg, &error, &debug);
			g_free (debug);

			g_printerr ("Error: %s\n", error->message);
			g_error_free (error);

			g_main_loop_quit (loop);
		break;
		}
		default:
		break;
	}

	return TRUE;
}

int main (int   argc, char *argv[])
{
	GMainLoop *loop;
	CustomData data;
	data.sourceid = 0;
	
	//Circular buffer
	buf = new circ_buffer<Mat>(10);
	bufptr = (circ_buffer *)&buf;
	printf("Circular buffer size set to: %d\r\n", buf.size());

	GstBus *bus;
	guint bus_watch_id;

	/* Initialisation */
	gst_init (&argc, &argv);

	loop = g_main_loop_new (NULL, FALSE);
	std::thread feed(showfeed, &data);

	/* Create gstreamer elements */
	data.pipeline = gst_pipeline_new("Webcam-stream");
	data.driver = gst_element_factory_make("v4l2src", "Video4linux2source");
	data.queue = gst_element_factory_make ("queue", "video_queue");
	data.capsfilter = gst_element_factory_make("capsfilter", "caps-filter");
	data.mux = gst_element_factory_make("avimux", "avi-mux");
	data.appsink = gst_element_factory_make ("appsink", "video-output");


	if (!data.pipeline || !data.queue || !data.driver || !data.capsfilter || !data.mux || !data.appsink ) {
	g_printerr ("One element could not be created. Exiting.\n");
	return -1;
	}

	/* Set up the pipeline */

	/* we set the input filename to the source element */

	/* we add a message handler */
	bus = gst_pipeline_get_bus (GST_PIPELINE (data.pipeline));
	bus_watch_id = gst_bus_add_watch (bus, bus_call, loop);
	gst_object_unref (bus);

	// set options of driver
	g_object_set (G_OBJECT(data.driver), "device", "/dev/video0", NULL);

	// create the capabilities filter structure
	GstCaps *caps = gst_caps_new_simple ("video/x-raw", //viceo/x-raw
	"format", G_TYPE_STRING, "YUY2",
	"framerate", GST_TYPE_FRACTION, FRAMERATE, 1,
	"pixel-aspect-ratio", GST_TYPE_FRACTION, 1, 1,
	"width", G_TYPE_INT, WIDTH,
	"height", G_TYPE_INT, HEIGHT,
	NULL);

	// set the capabilities
	g_object_set(G_OBJECT(data.capsfilter), "caps", caps, NULL);


	/* Configure appsink */
	g_object_set (data.appsink, "emit-signals", TRUE, "caps", caps, NULL);
	g_signal_connect (data.appsink, "new-sample", G_CALLBACK (new_sample), &data);

	gst_caps_unref (caps);

	gst_bin_add_many (GST_BIN (data.pipeline), data.driver, data.capsfilter, data.queue, data.appsink, NULL);
	gst_element_link_many (data.driver, data.capsfilter, data.appsink, NULL);

	gst_element_set_state (data.pipeline, GST_STATE_PLAYING);

	/* Iterate */
	g_print("Running...\n");
	g_main_loop_run(loop);


	/* Out of the main loop, clean up nicely */
	g_print ("Returned, stopping playback\n");
	gst_element_set_state (data.pipeline, GST_STATE_NULL);

	g_print("Deleting pipeline\n");
	gst_object_unref(GST_OBJECT (data.pipeline));
	g_source_remove(bus_watch_id);
	g_main_loop_unref(loop);
	
	buf.clear();
	delete data.bufptr;
	return 0;
	
	
}
