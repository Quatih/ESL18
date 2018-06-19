#include <gst/gst.h>
#include <glib.h>
#include <gst/app/gstappsink.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "queue.h"
#include <opencv/cv.h>
#include <opencv/imgproc.h>
#include <opencv/core.h>
#include <opencv/imgcodecs.h>
#include <opencv/highgui.h>
#include <unistd.h>
#include <pthread.h>
#include <types_c.h>

#define WIDTH 320
#define HEIGHT 240
#define FRAMERATE 30

#define FRAMESIZE 115200//WIDTH*HEIGHT*2

#define MARGIN 50

Mat imtoshow, imtoshow1;
bool LOCK;



/* Structure to contain all our information, so we can pass it to callbacks */
typedef struct _CustomData {
  GstElement *pipeline, *driver, *capsfilter, *mux, *appsink, *queue;


  guint64 num_samples;   /* Number of samples generated so far (for timestamp generation) */
	GstBuffer *buffer;
	uint16_t frame[160*120];

  guint sourceid;        /* To control the GSource */

  GMainLoop *main_loop;  /* GLib's Main Loop */
} CustomData;


queue_descr_t frames;




void showfeed(void)
{
  cvNamedWindow("window");
  cvNamedWindow("window1");
  usleep(5000000);

  while(1)
  {
    while(LOCK);
    cvShowImage("window", imtoshow);
    cvShowImage("window1", imtoshow1);
    LOCK = true;
    //cvWaitKey(33);
  }
}

static GstFlowReturn new_sample (GstElement *sink, CustomData *data) {
GstSample *sample;
GstBuffer *buffer;
  GstFlowReturn ret;
GstMapInfo info;
uint16_t d[WIDTH*HEIGHT];
  /* Retrieve the buffer */
  g_signal_emit_by_name (sink, "pull-sample", &sample);
  if (sample) {

  buffer = gst_sample_get_buffer(sample);
    gst_buffer_map(buffer, &info, GST_MAP_READ);
//g_print("Size: %d\r\n", strlen((const char *)info.data));
/*Image processing part*/
IPlimage *img, *img_rgb, *img_th, *img_hsv, *img1, *img2;

//Fill buffer of img with info.data
img->imageData = &info.data;

cvCvtColor(img, img_rgb, CV_RGB2BGR);
cvCvtColor(img_rgb, img_hsv, CV_BGR2HSV);

//vector<vector<Point>> contours;
//vector<Vec4i> hierarchy;
CvMemStorage *storage = cvCreateMemStorage(0);
cvMemStorage *largest_contour = cvCreateMemStorage(0);
cvSeq *contours = cvCreateSeq(CV_FLAG_SIMPE | CV_FLAG_KIND_SET | CV_TYPE_ELTYPE_POINT, sizeof(cvSeq), sizeof(cvPoint), storage);
cvPoint Center;
cvPoint offset = {0,0};



cvInRange(img_hsv, cvScalar(90, 130, 130), cvScalar(140, 255,  255), img1);

IPlImage *Elem = cvGetStructuringElement(MORPH_ELLIPSE, Size(10, 10));
cvMorphologyEx(img1, img1, MORPH_OPEN, Elem);

cvFindContours(img1, storage, &contours, sizeof(CvContour), CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE, offset);

int largest_area=0;
 int largest_contour_index=0;
  Rect bounding_rect;



for(; contrours != 0; contours = contours->h_next)
{
	double a=cvContourArea(contour->storage, CV_WHOLE_SEQ, 0);
	if(a>largest_area){
       		largest_area=a;
		largest_contour = contour->storage;
		break;
	}
}

cvRect r = cvBoundingRect(largest_contour, 0);
Center.x = r.x+r.width/2;
Center.y = r.y+r.height/2;

cvScalar color( 255,255,255);
cvScalar hole_color(0, 0, 0);
cvDrawContours(img_rgb, contours, color, hole_color, 0, 1, 8, cvPoint(0,0));
cvCircle(img_rgb, Center, 2, color, -1, 8, 0);

//Determine motor directions
if(Center.x < WIDTH/2 - MARGIN)
	print("Turn Pan left\r\n");
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


//imwrite("img1.png", img_rgb);
cvCvtColor(img1, img1, CV_GRAY2BGR);
cvBitwise_and(img_rgb, img1, img2, NULL);


while(!LOCK);
imtoshow = img_rgb;
imtoshow1 = img2;
LOCK = false;
//imwrite("img2.png", img2);
//cvtColor(img1, img2, CV_HSV2BGR_FULL);
g_print("*");
//cvtColor(img2, img_th, CV_BGR2YUV_I420);
//imshow("window", img2);
//waitKey(0);

//inRange(img_rgb, Scalar(100, 0, 0), Scalar(255, 100, 100), img_th);
//imshow("window1", img_th);



/**/
//g_print("Size: %d\r\n", strlen((const char *)img1.data));

		//queue_push(&frames, img1.data);
    /* The only thing we do in this example is print a * to indicate a received buffer */
    //g_print ("Size %d\n", info.size);
		
    gst_sample_unref (sample);
    ret = GST_FLOW_OK;
  }
  else{
    ret = GST_FLOW_ERROR;
  }
  return ret;


}


static gboolean
bus_call (GstBus     *bus,
          GstMessage *msg,
          gpointer    data)
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

int main (int   argc,
      char *argv[])
{
  GMainLoop *loop;
	CustomData data;
	data.sourceid = 0;

  GstBus *bus;
  guint bus_watch_id;

  /* Initialisation */
  gst_init (&argc, &argv);

  loop = g_main_loop_new (NULL, FALSE);
LOCK = true;


pthread_t t;
pthread_create(&t, NULL, showfeed, NULL);

// Init queue's
queue_init(&frames, 5, FRAMESIZE);

  /* Create gstreamer elements */
	data.pipeline = gst_pipeline_new("Webcam-stream");
  data.driver = gst_element_factory_make("v4l2src", "Video4linux2source");
data.queue = gst_element_factory_make ("queue", "video_queue");
  data.capsfilter = gst_element_factory_make("capsfilter", "caps-filter");
  data.mux = gst_element_factory_make("avimux", "avi-mux");
  data.appsink = gst_element_factory_make ("appsink", "video-output");
	

  if (!data.pipeline ||  !data.queue || !data.driver || !data.capsfilter || !data.mux || !data.appsink) {
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
   "format", G_TYPE_STRING, "RGB",
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
  g_print ("Running...\n");
  g_main_loop_run (loop);


  /* Out of the main loop, clean up nicely */
  g_print ("Returned, stopping playback\n");
  gst_element_set_state (data.pipeline, GST_STATE_NULL);

  g_print ("Deleting pipeline\n");
  gst_object_unref (GST_OBJECT (data.pipeline));
  g_source_remove (bus_watch_id);
  g_main_loop_unref (loop);

  return 0;
}
