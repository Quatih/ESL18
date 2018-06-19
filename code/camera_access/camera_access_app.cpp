#include <gst/gst.h>
#include <glib.h>
#include <gst/app/gstappsink.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "queue.h"
#include <opencv/cv.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <thread>
#include <iostream>
#include <unistd.h>

#define WIDTH 320
#define HEIGHT 240
#define FRAMERATE 30

#define FRAMESIZE 115200//WIDTH*HEIGHT*2

using namespace cv;


Mat imtoshow, imtoshow1;
bool LOCK;


/* Structure to contain all our information, so we can pass it to callbacks */
typedef struct _CustomData {
  GstElement *pipeline, *driver, *capsfilter, *mux, *appsink;
GstElement *pipeline1, *appsource, *capsfilter1,  *queue, *videoconvert, *fpssink;

  guint64 num_samples;   /* Number of samples generated so far (for timestamp generation) */
	GstBuffer *buffer;
	uint16_t frame[160*120];

  guint sourceid;        /* To control the GSource */

  GMainLoop *main_loop;  /* GLib's Main Loop */
} CustomData;


queue_descr_t frames;



/* This method is called by the idle GSource in the mainloop, to feed CHUNK_SIZE bytes into appsrc.
 * The ide handler is added to the mainloop when appsrc requests us to start sending data (need-data signal)
 * and is removed when appsrc has enough data (enough-data signal).
 */
static gboolean push_data (CustomData *data) {
  GstBuffer *buffer;
  GstFlowReturn ret;
  int i;
  GstMapInfo map;

  static GstClockTime timestamp = 0;

	guint size;

  size= FRAMESIZE;
	uint16_t frame[WIDTH*HEIGHT];
	queue_pop(&frames, &frame);
  buffer = gst_buffer_new_wrapped_full((GstMemoryFlags) 0, frame, size, 0, size, NULL, NULL );


  GST_BUFFER_PTS (buffer) = timestamp;
  GST_BUFFER_DURATION (buffer) = gst_util_uint64_scale_int (1, GST_SECOND, FRAMERATE);

  timestamp += GST_BUFFER_DURATION (buffer);

   g_signal_emit_by_name (data->appsource, "push-buffer", buffer, &ret);

  
  gst_buffer_unref (buffer);

  if (ret != GST_FLOW_OK) {
g_print("Error\n");
   
    return FALSE;
  }

  return TRUE;
}

void showfeed(void)
{
  namedWindow("window");
  namedWindow("window1");
  usleep(5000000);

  while(1)
  {
    //while(LOCK);
    imshow("window", imtoshow);
    imshow("window1", imtoshow1);
    //waitKey(1);
    LOCK = true;
    //waitKey(33);
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
Mat img_rgb, img_th, img_hsv, img1, img2;
Mat img(HEIGHT + HEIGHT/2, WIDTH, CV_8UC1, info.data);

cvtColor(img, img_rgb, CV_YUV2BGR_I420);
cvtColor(img_rgb, img_hsv, CV_BGR2HSV_FULL);
inRange(img_hsv, Scalar(80, 100, 50), Scalar(150, 255,  170), img1);
imwrite("img1.png", img_rgb);
cvtColor(img1, img1, CV_GRAY2BGR);
bitwise_and(img_rgb, img1, img2);


//while(!LOCK);
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


/* This signal callback triggers when appsrc needs data. Here, we add an idle handler
 * to the mainloop to start pushing data into the appsrc */
static void start_feed (GstElement *source, guint size, CustomData *data) {
  if (data->sourceid == 0) {
    g_print ("Start feeding\n");
    data->sourceid = g_idle_add ((GSourceFunc) push_data, data);
  }
}

/* This callback triggers when appsrc has enough data and we can stop sending.
 * We remove the idle handler from the mainloop */



static void stop_feed (GstElement *source, CustomData *data) {
  if (data->sourceid != 0) {
    g_print ("Stop feeding %d\n", data->sourceid);
    g_source_remove (data->sourceid);
    data->sourceid = 0;
  }
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
  GMainLoop *loop, *loop1;
	CustomData data;
	data.sourceid = 0;

  GstBus *bus, *bus1;
  guint bus_watch_id, bus_watch_id1;

  /* Initialisation */
  gst_init (&argc, &argv);

  loop = g_main_loop_new (NULL, FALSE);
	loop1 = g_main_loop_new (NULL, FALSE);

LOCK = true;

std::thread feed(showfeed);

// Init queue's
queue_init(&frames, 5, FRAMESIZE);

  /* Create gstreamer elements */
	data.pipeline = gst_pipeline_new("Webcam-stream");
  data.pipeline1 = gst_pipeline_new("Webcam-stream");
  data.driver = gst_element_factory_make("v4l2src", "Video4linux2source");
	data.queue = gst_element_factory_make ("queue", "video_queue");
  data.capsfilter = gst_element_factory_make("capsfilter", "caps-filter");
	data.capsfilter1 = gst_element_factory_make("capsfilter", "caps-filter");
  data.mux = gst_element_factory_make("avimux", "avi-mux");
  data.appsink = gst_element_factory_make ("appsink", "video-output");
	data.appsource = gst_element_factory_make ("appsrc", "video-input");
  data.videoconvert = gst_element_factory_make("videoconvert", "vid-conv");
	data.fpssink = gst_element_factory_make("fpsdisplaysink", "output");
	

  if (!data.pipeline || !data.pipeline1 || !data.queue || !data.driver || !data.capsfilter || !data.mux || !data.appsink || !data.appsource || !data.videoconvert || !data.fpssink) {
    g_printerr ("One element could not be created. Exiting.\n");
    return -1;
  }

  /* Set up the pipeline */

  /* we set the input filename to the source element */

  /* we add a message handler */
  bus = gst_pipeline_get_bus (GST_PIPELINE (data.pipeline));
	bus1 = gst_pipeline_get_bus (GST_PIPELINE (data.pipeline1)); 
 bus_watch_id = gst_bus_add_watch (bus, bus_call, loop);
	bus_watch_id1 = gst_bus_add_watch (bus1, bus_call, loop1);
  gst_object_unref (bus);
  gst_object_unref (bus1);


  // set options of driver
  g_object_set (G_OBJECT(data.driver), "device", "/dev/video0", NULL);

  // create the capabilities filter structure
  GstCaps *caps = gst_caps_new_simple ("video/x-raw", //viceo/x-raw
   "format", G_TYPE_STRING, "I420",
   "framerate", GST_TYPE_FRACTION, FRAMERATE, 1,
   "pixel-aspect-ratio", GST_TYPE_FRACTION, 1, 1,
   "width", G_TYPE_INT, WIDTH,
   "height", G_TYPE_INT, HEIGHT,
   NULL);

  

  // set the capabilities
  g_object_set(G_OBJECT(data.capsfilter), "caps", caps, NULL);
 g_object_set(G_OBJECT(data.capsfilter1), "caps", caps, NULL);

	/*Configure the appsource*/
  g_object_set (data.appsource, "caps", caps, NULL);
g_signal_connect (data.appsource, "need-data", G_CALLBACK (start_feed), &data);
  g_signal_connect (data.appsource, "enough-data", G_CALLBACK (stop_feed), &data);

  /* Configure appsink */
  g_object_set (data.appsink, "emit-signals", TRUE, "caps", caps, NULL);
  g_signal_connect (data.appsink, "new-sample", G_CALLBACK (new_sample), &data);

  gst_caps_unref (caps);

  gst_bin_add_many (GST_BIN (data.pipeline), data.driver, data.capsfilter, data.queue, data.appsink, NULL);
  gst_element_link_many (data.driver, data.capsfilter, data.appsink, NULL); 
  gst_bin_add_many (GST_BIN (data.pipeline1), data.appsource, data.capsfilter1, data.fpssink, NULL);
  gst_element_link_many ( data.appsource, data.capsfilter1, data.fpssink, NULL);



 // namedWindow("window");
  //namedWindow("window1");
  /* Set the pipeline to "playing" state*/
  // g_print ("Now playing: %s\n", argv[1]);
  gst_element_set_state (data.pipeline, GST_STATE_PLAYING);
	//gst_element_set_state (data.pipeline1, GST_STATE_PLAYING);

  /* Iterate */
  g_print ("Running...\n");
  g_main_loop_run (loop);
	//g_main_loop_run (loop1);


  /* Out of the main loop, clean up nicely */
  g_print ("Returned, stopping playback\n");
  gst_element_set_state (data.pipeline, GST_STATE_NULL);
	//gst_element_set_state (data.pipeline1, GST_STATE_NULL);

  g_print ("Deleting pipeline\n");
  gst_object_unref (GST_OBJECT (data.pipeline));
	//gst_object_unref (GST_OBJECT (data.pipeline1));
  g_source_remove (bus_watch_id);
  g_main_loop_unref (loop);

	//g_source_remove (bus_watch_id1);
  //g_main_loop_unref (loop1);
  return 0;
}
