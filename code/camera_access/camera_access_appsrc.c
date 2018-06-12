#include <gst/gst.h>
#include <glib.h>
#include <gst/app/gstappsink.h>
#include <stdint.h>


/* Structure to contain all our information, so we can pass it to callbacks */
typedef struct _CustomData {
GstElement *pipeline1, *appsource, *capsfilter, *queue, *fpssink;

  guint64 num_samples;   /* Number of samples generated so far (for timestamp generation) */
	GstBuffer *buffer;

  guint sourceid;        /* To control the GSource */

  GMainLoop *main_loop;  /* GLib's Main Loop */
} CustomData;


uint16_t b_white[160*120];
uint16_t b_black[160*120];

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
  gint16 *raw;
  gint num_samples = 38400 / 2; /* Because each sample is 16 bits */
  gfloat freq;
static gboolean white = FALSE;
guint size;

  size = 160 * 120 * 2;

  buffer = gst_buffer_new_wrapped_full( 0, (gpointer)(white?b_white:b_black), size, 0, size, NULL, NULL );

  white = !white;

  GST_BUFFER_PTS (buffer) = timestamp;
  GST_BUFFER_DURATION (buffer) = gst_util_uint64_scale_int (1, GST_SECOND, 4);

  timestamp += GST_BUFFER_DURATION (buffer);

  ret = gst_app_src_push_buffer(data->appsource, buffer);
g_print("ret: %d, %d\n",ret, GST_FLOW_OK);

  if (ret != GST_FLOW_OK) {
g_print("Error\n");
    /* We got some error, stop sending data */
    return FALSE;
  }

  return TRUE;
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

/*
static void
on_pad_added (GstElement *element,
              GstPad     *pad,
              gpointer    data)
{
  GstPad *sinkpad;
  GstElement *decoder = (GstElement *) data;

  // We can now link this pad with the vorbis-decoder sink pad
  g_print ("Dynamic pad created, linking demuxer/decoder\n");

  sinkpad = gst_element_get_static_pad (decoder, "sink");

  gst_pad_link (pad, sinkpad);

  gst_object_unref (sinkpad);
}*/


// 
int main (int   argc,
      char *argv[])
{
  GMainLoop *loop1;
CustomData data;
data.sourceid = 0;

  GstBus  *bus1;
  guint bus_watch_id, bus_watch_id1;

  /* Initialisation */
  gst_init (&argc, &argv);

loop1 = g_main_loop_new (NULL, FALSE);


for (int i = 0; i < 160*120; i++) { b_black[i] = 0; b_white[i] = 0xFFFF; }

  /* Check input arguments */
 // if (argc != 3) {
  //  g_printerr ("Usage: %s <Ogg/Vorbis filename>\n", argv[0]);
  //  return -1;
  //}


  /* Create gstreamer elements */
  data.pipeline1 = gst_pipeline_new("Webcam-stream");
	data.queue = gst_element_factory_make ("queue", "video_queue");

data.capsfilter = gst_element_factory_make("capsfilter", "caps-filter");
	data.appsource = gst_element_factory_make ("appsrc", "video-input");
	data.fpssink = gst_element_factory_make("fpsdisplaysink", "output");
	

  if (!data.pipeline1 || !data.appsource || !data.fpssink) {
    g_printerr ("One element could not be created. Exiting.\n");
    return -1;
  }

  /* Set up the pipeline */

  /* we set the input filename to the source element */

  /* we add a message handler */
bus1 = gst_pipeline_get_bus (GST_PIPELINE (data.pipeline1));
bus_watch_id1 = gst_bus_add_watch (bus1, bus_call, loop1);
 gst_object_unref (bus1);



  // create the capabilities filter structure
  GstCaps *caps = gst_caps_new_simple ("video/x-raw", //viceo/x-raw
   "format", G_TYPE_STRING, "YUY2",
   "framerate", GST_TYPE_FRACTION, 30, 1,
   "pixel-aspect-ratio", GST_TYPE_FRACTION, 1, 1,
   "width", G_TYPE_INT, 160,
   "height", G_TYPE_INT, 120,
   NULL);


/*Configure the appsource*/
  g_object_set (data.appsource, "caps", caps, NULL);
  g_signal_connect (data.appsource, "need-data", G_CALLBACK (start_feed), &data);
  g_signal_connect (data.appsource, "enough-data", G_CALLBACK (stop_feed), &data);


  /* we add all elements into the pipeline */


  gst_bin_add_many (GST_BIN (data.pipeline1), data.appsource, data.capsfilter, data.queue, ,data.fpssink, NULL);

  gst_element_link_many ( data.appsource, data.capsfilter,  data.queue, data.fpssink, NULL);


gst_element_set_state (data.pipeline1, GST_STATE_PLAYING);

  /* Iterate */
  g_print ("Running...\n");
g_main_loop_run (loop1);


  /* Out of the main loop, clean up nicely */
  g_print ("Returned, stopping playback\n");
gst_element_set_state (data.pipeline1, GST_STATE_NULL);

  g_print ("Deleting pipeline\n");
gst_object_unref (GST_OBJECT (data.pipeline1));

g_source_remove (bus_watch_id1);
  g_main_loop_unref (loop1);
  return 0;
}
