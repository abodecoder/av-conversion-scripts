for f in *16\ bit*.pcm; do

wine eac3to "$f" "${f%.pcm}done.wav" -2 -16 -big

#ffmpeg -i "$f" -c:v libx265 -crf 25 "${f%.h264}x265crf25.mp4"; 
done
