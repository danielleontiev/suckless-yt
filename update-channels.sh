#!/bin/bash


cat $HOME/.config/suckless-yt/channels.txt | awk '{print $1"/videos"}' | xargs curl -s > $HOME/.cache/suckless-yt/channels-data.txt

cat $HOME/.cache/suckless-yt/channels-data.txt | pup --charset utf-8 "meta[name=title] attr{content}" > $HOME/.cache/suckless-yt/channels-names.txt
