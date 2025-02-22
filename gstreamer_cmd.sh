 gst-launch-1.0 rtspclientsink protocols=tcp name=s location=rtsp://<host>:8554/protecia filesrc location=video.mp4 ! qtdemux name=d d.video_0 ! queue ! s.sink_0 d.audio_0 ! queue ! s.sink_1

# using tls:
gst-launch-1.0 rtspclientsink protocols=tcp name=s location=rtsps://<host>:8555/protecia filesrc location=video.mp4 ! qtdemux name=d d.video_0 ! queue ! s.sink_0 d.audio_0 ! queue ! s.sink_1