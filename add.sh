#!/bin/bash
yt-dlp -x --audio-format=opus $1 &&
filename=$(find . -maxdepth 1 -type f -name "*.opus" | sed -E "s/.\///") &&
echo $filename &&
mv *.opus ./assets/audio/music &&
sed -i "s/<file-list>/<file-list>\n\t\t$filename/" index.html 
