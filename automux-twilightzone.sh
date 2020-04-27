#mux with variables, including user input
#!/bin/bash
# Ask the user for input about the disc/movie's prefix
#read -p 'What is the prefix?: ' prefixvar
echo Thank you, now we know that the prefix is $prefixvar
#define an array for use with a 'for' loop
ARRAY=(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40)
for t in ${ARRAY[@]}; do
#mkvmerge -o "Class of 1999_t${t}-mux.mkv" "Class of 1999_t${t}x265.mkv" --no-video "Class of 1999_t${t}.mkv"
#mkvmerge -o "KANSAS CITY_t${t}-mux.mkv" "KANSAS CITY_t${t}x265.mkv" --no-video "KANSAS CITY_t${t}.mkv"
#mkvmerge -o "$prefixvar${t}-mux.mkv" "$prefixvar${t}x265.mkv" --no-video --no-audio "$prefixvar${t}.mkv"
#mkvmerge -o "-mux.mkv" "x265.mkv" --no-video ".mkv"
#mkvmerge -o "My Cousin Rachel_t${t}-mux.mkv" "My Cousin Rachel_t${t}x265.mkv" --no-video "My Cousin Rachel_t${t}.mkv"
mkvmerge -o title_t${t}-mux.mkv title_t${t}x265.mkv  *title_t${t}*.flac --no-video --no-audio  title_t${t}.mkv
done
