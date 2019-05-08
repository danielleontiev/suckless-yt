install:
	mkdir -p "${HOME}"/.config/suckless-yt
	mkdir -p ${HOME}/.cache/suckless-yt
	touch ${HOME}/.config/suckless-yt/channels.txt
	mkdir -p ${HOME}/bin
	cp list-videos.sh suckless-yt update-channels.sh ${HOME}/bin

uninstall:
	rm -rf ${HOME}/.config/suckless-yt
	rm -rf ${HOME}/.cache/suckless-yt
	rm -f ${HOME}/bin/list-videos.sh
	rm -f ${HOME}/bin/suckless-yt
	rm -f ${HOME}/bin/update-channels.sh

