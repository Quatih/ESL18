#include <gst/gst.h>
#include <glib.h>


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


static void
on_pad_added (GstElement *element,
              GstPad     *pad,
              gpointer    data)
{
  GstPad *sinkpad;
  GstElement *decoder = (GstElement *) data;

  /* We can now link this pad with the vorbis-decoder sink pad */
  g_print ("Dynamic pad created, linking demuxer/decoder\n");

  sinkpad = gst_element_get_static_pad (decoder, "sink");

  gst_pad_link (pad, sinkpad);

  gst_object_unref (sinkpad);
}


// 
int
main (int   argc,
      char *argv[])
{
  GMainLoop *loop;

  GstElement *pipeline, *source, *driver, *capsfilter, *mp4mux, *sink;
  GstBus *bus;
  guint bus_watch_id;

  /* Initialisation */
  gst_init (&argc, &argv);

  loop = g_main_loop_new (NULL, FALSE);


  /* Check input arguments */
  if (argc != 3) {
    g_printerr ("Usage: %s <Ogg/Vorbis filename>\n", argv[0]);
    return -1;
  }


  /* Create gstreamer elements */
  // pipeline = gst_pipeline_new ("audio-player");
  pipeline = gst_pipeline_new("Webcam-stream");
  // source   = gst_element_factory_make ("filesrc",       "file-source");
  driver = gst_element_factory_make("v4l2src", "Video4linux2source");
  capsfilter = gst_elemegnt_factory_make("capsfilter", "caps-filter");
  // demuxer  = gst_element_factory_make ("oggdemux",      "ogg-demuxer");
  // decoder  = gst_element_factory_make ("vorbisdec",     "vorbis-decoder");
  // conv     = gst_element_factory_make ("audioconvert",  "converter");
  mp4mux = gst_element_factory_make("mp4mux", "mp4-mux");
  sink     = gst_element_factory_make ("autovideosink", "video-output");

  if (!pipeline || !source || !driver || !caps || !mp4mux || !sink) {
    g_printerr ("One element could not be created. Exiting.\n");
    return -1;
  }

  /* Set up the pipeline */

  /* we set the input filename to the source element */

  /* we add a message handler */
  bus = gst_pipeline_get_bus (GST_PIPELINE (pipeline));
  bus_watch_id = gst_bus_add_watch (bus, bus_call, loop);
  gst_object_unref (bus);


  // set options of driver
  g_object_set (G_Object(driver), "device", argv[1], NULL);

  // create the capabilities filter structure
  GstCaps *caps = gst_caps_new_simple ("image/jpeg", //viceo/x-raw
  //  "format", G_TYPE_STRING, "YUV2",
   "framerate", GST_TYPE_FRACTION, 15, 1,
   "pixel-aspect-ratio", GST_TYPE_FRACTION, 1, 1,
   "width", G_TYPE_INT, 320,
   "height", G_TYPE_INT, 240,
   NULL);

  // set the capabilities
  g_object_set(G_Object(capsfilter), "caps", &caps,NULL);

  g_object_set(G_Object(sink), "location", argv[2])
  /* we add all elements into the pipeline */
  /* file-source | ogg-demuxer | vorbis-decoder | converter | alsa-output */
  gst_bin_add_many (GST_BIN (pipeline),
                    source, driver, capsfilter, mp4mux, sink, NULL);

  /* we link the elements together */
  /* file-source -> ogg-demuxer ~> vorbis-decoder -> converter -> alsa-output */
  // gst_element_link (source, driver);
  gst_element_link_many (driver, capsfilter, mp4mux, sink, NULL);
  // g_signal_connect (demuxer, "pad-added", G_CALLBACK (on_pad_added), decoder);

  /* note that the demuxer will be linked to the decoder dynamically.
     The reason is that Ogg may contain various streams (for example
     audio and video). The source pad(s) will be created at run time,
     by the demuxer when it detects the amount and nature of streams.
     Therefore we connect a callback function which will be executed
     when the "pad-added" is emitted.*/


  /* Set the pipeline to "playing" state*/
  // g_print ("Now playing: %s\n", argv[1]);
  gst_element_set_state (pipeline, GST_STATE_PLAYING);

  /* Iterate */
  g_print ("Running...\n");
  g_main_loop_run (loop);


  /* Out of the main loop, clean up nicely */
  g_print ("Returned, stopping playback\n");
  gst_element_set_state (pipeline, GST_STATE_NULL);

  g_print ("Deleting pipeline\n");
  gst_object_unref (GST_OBJECT (pipeline));
  g_source_remove (bus_watch_id);
  g_main_loop_unref (loop);

  return 0;
}