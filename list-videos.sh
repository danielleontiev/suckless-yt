#!/bin/bash


curl -s $@ | pup --charset utf-8 "h3.yt-lockup-title" > $HOME/.cache/suckless-yt/videos.txt
cat $HOME/.cache/suckless-yt/videos.txt | pup --charset utf-8 "a attr{title}" > $HOME/.cache/suckless-yt/videos-titles.txt

cat $HOME/.cache/suckless-yt/videos.txt | pup --charset utf-8 "a attr{href}" | awk '{print "https://www.youtube.com"$1}' > $HOME/.cache/suckless-yt/videos-hrefs.txt
