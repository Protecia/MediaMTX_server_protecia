 gst-launch-1.0 rtspclientsink protocols=tcp name=s location=rtsp://51.91.253.77:8554/protecia filesrc location=video.mp4 ! qtdemux name=d d.video_0 ! queue ! s.sink_0 d.audio_0 ! queue ! s.sink_1
