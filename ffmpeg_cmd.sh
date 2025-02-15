# rtsp --le meilleur rendu pour la videosurveillance--
ffmpeg -re -i video.mp4 -r 10 -c:v libx264 -preset veryfast  -b:v 800k -c:a aac -ar 44100 -rtsp_transport tcp -f rtsp  rtsp://<host>:8554/protecia

# rtmp
ffmpeg -re -i video.mp4 -r 10 -c:v libx264 -preset veryfast -b:v 800k -c:a aac -ar 44100 -f flv rtmp://<host>:1935/protecia

# rtsp copy no encode
ffmpeg -re -i video.mp4 -c copy -f rtsp -rtsp_transport tcp rtsp://<host>:8554/protecia


ffmpeg -re -i video.mp4 -r 10 -c:v libx264 -preset ultrafast -tune zerolatency  -b:v 800k -c:a aac -ar 44100 -rtsp_transport tcp -f rtsp  rtsp://<host>:8554/protecia