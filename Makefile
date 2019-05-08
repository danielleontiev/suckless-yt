install:
	mkdir -p $HOME/.config/suckless-yt
	mkdir -p $HOME/.cache/suckless-yt
	touch $HOME/.config/suckless-yt/channels.txt
	mkdir -p $HOME/bin
	cp list-videos.sh suckless-yt update-channels.sh $HOME/bin

uninstall:
	rm -r $HOME/.config/suckless-yt
	rm -r $HOME/.cache/suckless-yt
	rm $HOME/bin/{list-videos.sh suckless-yt update-channels.sh}

