#include <gst/gst.h>
#include <glib.h>
#include <gst/app/gstappsink.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "queue.h"

#define WIDTH 640
#define HEIGHT 480
#define FRAMERATE 30

#define FRAMESIZE WIDTH*HEIGHT*2

/* Structure to contain all our information, so we can pass it to callbacks */
typedef struct _CustomData {
  GstElement *pipeline, *driver, *capsfilter, *mux, *appsink;
GstElement *pipeline1, *appsource, *capsfilter1,  *queue, *fpssink;

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
  buffer = gst_buffer_new_wrapped_full( 0, frame, size, 0, size, NULL, NULL );


  GST_BUFFER_PTS (buffer) = timestamp;
  GST_BUFFER_DURATION (buffer) = gst_util_uint64_scale_int (1, GST_SECOND, FRAMERATE);

  timestamp += GST_BUFFER_DURATION (buffer);

   g_signal_emit_by_name (data->appsource, "push-buffer", buffer, &ret);

  /* Free the buffer now that we are done with it */
  gst_buffer_unref (buffer);

  if (ret != GST_FLOW_OK) {
g_print("Error\n");
    /* We got some error, stop sending data */
    return FALSE;
  }

  return TRUE;
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

/*Image processing part*/




/**/


		queue_push(&frames, info.data);
    /* The only thing we do in this example is print a * to indicate a received buffer */
    //g_print ("Size %d\n", info.size);
		g_print("*");
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



// Init queue's
queue_init(&frames, 5, WIDTH*HEIGHT*2);

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
	data.fpssink = gst_element_factory_make("fpsdisplaysink", "output");
	

  if (!data.pipeline || !data.pipeline1 || !data.queue || !data.driver || !data.capsfilter || !data.mux || !data.appsink || !data.appsource || !data.fpssink) {
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
   "format", G_TYPE_STRING, "YUY2",
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

  gst_bin_add_many (GST_BIN (data.pipeline), data.driver, data.capsfilter, data.appsink, NULL);
  gst_element_link_many (data.driver, data.capsfilter, data.appsink, NULL); 
  gst_bin_add_many (GST_BIN (data.pipeline1), data.appsource, data.capsfilter1,data.fpssink, NULL);
  gst_element_link_many ( data.appsource, data.capsfilter1, data.fpssink, NULL);


  /* Set the pipeline to "playing" state*/
  // g_print ("Now playing: %s\n", argv[1]);
  gst_element_set_state (data.pipeline, GST_STATE_PLAYING);
	gst_element_set_state (data.pipeline1, GST_STATE_PLAYING);

  /* Iterate */
  g_print ("Running...\n");
  g_main_loop_run (loop);
	g_main_loop_run (loop1);


  /* Out of the main loop, clean up nicely */
  g_print ("Returned, stopping playback\n");
  gst_element_set_state (data.pipeline, GST_STATE_NULL);
	gst_element_set_state (data.pipeline1, GST_STATE_NULL);

  g_print ("Deleting pipeline\n");
  gst_object_unref (GST_OBJECT (data.pipeline));
	gst_object_unref (GST_OBJECT (data.pipeline1));
  g_source_remove (bus_watch_id);
  g_main_loop_unref (loop);

	g_source_remove (bus_watch_id1);
  g_main_loop_unref (loop1);
  return 0;
}
