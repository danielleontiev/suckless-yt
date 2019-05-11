#!/bin/bash

rm -f $HOME/.cache/suckless-yt/last-videos-titles.txt
rm -f $HOME/.cache/suckless-yt/last-videos-hrefs.txt

while read -r line;
do
    curl -s "$line"/videos | pup --charset utf-8 "h3.yt-lockup-title" > $HOME/.cache/suckless-yt/last-videos.txt
    cat $HOME/.cache/suckless-yt/last-videos.txt | pup --charset utf-8 "a attr{title}" | head -n1 >> $HOME/.cache/suckless-yt/last-videos-titles.txt
    cat $HOME/.cache/suckless-yt/last-videos.txt | pup --charset utf-8 "a attr{href}" | head -n1 | awk '{print "https://www.youtube.com"$1}' >> $HOME/.cache/suckless-yt/last-videos-hrefs.txt
done < $HOME/.config/suckless-yt/channels.txt 

last=$(cat $HOME/.cache/suckless-yt/last-videos-titles.txt | dmenu -i -l 30)
[ -z "$last" ] && exit 1
pr -m -t -s'{sep}' $HOME/.cache/suckless-yt/last-videos-titles.txt $HOME/.cache/suckless-yt/last-videos-hrefs.txt | grep "$last" | awk -F'{sep}' '{print $2}' | xargs mpv
