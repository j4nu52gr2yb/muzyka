#!/bin/bash
yt-dlp -x --audio-format=opus $1 &&
filename=$(find . -maxdepth 1 -type f -name "*.opus" | sed -E "s/.\///")
filename_url=$(echo $filename | sed "s/ /%20/g")
sed_url=$(echo $1 | sed "s./.\\\/.g")
mv *.opus ./music &&
sed -i "s/<file-list>/<file-list>\n\t\t\t<a href=https:\/\/raw.githubusercontent.com\/j4nu52gr2yb\/muzyka\/refs\/heads\/main\/music\/$filename_url>$filename<\/a>: <a href=$sed_url>$sed_url<\/a><\/br>/" index.html # mogles uzyc idioto zamiasy / operatora . w sedzie
