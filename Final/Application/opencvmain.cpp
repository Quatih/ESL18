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

#define WIDTH 320
#define HEIGHT 240
#define FRAMERATE 30

#define FRAMESIZE 115200//WIDTH*HEIGHT*2

#define MARGIN 50

using namespace cv;
using namespace std;

Mat imtoshow;

std::thread t;


/* Structure to contain all our information, so we can pass it to callbacks */
typedef struct _CustomData {
	GstElement *pipeline, *driver, *capsfilter, *mux, *appsink, *queue;

	guint64 num_samples;   /* Number of samples generated so far (for timestamp generation) */
	GstBuffer *buffer;

	guint sourceid;        /* To control the GSource */

	GMainLoop *main_loop;  /* GLib's Main Loop */
} CustomData;

void showFrame(void)
{
	imshow("window", imtoshow);
	usleep(10000);
}
void processImage(Mat *image)
{
	//Mat img_rgb, img_th, img_hsv, img1, img2;
	//Mat img(HEIGHT, WIDTH, CV_8UC2, data);
	
	//cvtColor(img, img_rgb, CV_YUV2BGR_YUY2);
	cvtColor(image, img_hsv, CV_BGR2HSV);
	vector<vector<Point>> contours;
	vector<Vec4i> hierarchy;
	Point Center;
	

	if(!imtoshow.empty())
		t = std::thread(showFrame);	//Show previous frame.

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

	if(t.joinable())
		t.join();
	img_rgb.copyTo(imtoshow);

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

		/*Image processing part*/
		processImage((char *)info.data);
		/*End of image processing part.*/

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

	GstBus *bus;
	guint bus_watch_id;

	VideoCapture cap(0); // open the default camera
    if(!cap.isOpened())  // check if we succeeded
        return -1;
		
	cap.set(CV_CAP_PROP_FRAME_WIDTH,WIDTH);
	cap.set(CV_CAP_PROP_FRAME_HEIGHT,HEIGHT);
		
	while(1)
	{
		frame << cap;
		processImage(&frame);
	}

	/* 
	// snippet for if our own while loop
	mainModel model;
	model.initializeModel();
	model.move2end();
	model.setPos(M_PI/2, M_PI/2);
	// while loop to get consistend call to motor control
	while (1) {
			model.loop();
			g_main_context_iteration(g_main_context_default(), FALSE); // might cause 100% cpu usage
	}*/

	return 0;
}