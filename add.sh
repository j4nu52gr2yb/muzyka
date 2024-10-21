#!/bin/bash
yt-dlp -x --audio-format=opus $1 &&
filename=$(find . -maxdepth 1 -type f -name "*.opus" | sed -E "s/.\///")
filename_url=$(echo $filename | sed "s/ /%20/g") &&
echo $filename &&
mv *.opus ./music &&
sed -i "s/<file-list>/<file-list>\n\t\t\t<a href=https:\/\/github.com\/j4nu52gr2yb\/muzyka\/blob\/main\/music\/$filename_url>$filename<\/a>/" index.html 
