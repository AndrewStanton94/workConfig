#!/bin/zsh
# Need to source the file. Not run.
# . ./morsmordre.zsh
export WORKCONFIG="$HOME/Downloads/workConfig"

packConfig(){
	cp -vu ~/.zshrc $WORKCONFIG
	cp -vu ~/.vimrc $WORKCONFIG
	cp -vu ~/.tmux.conf $WORKCONFIG
	cp -vu ~/morsmordre.zsh $WORKCONFIG
	cp -vu ~/materialize.sh $WORKCONFIG
	cp -vu ~/installlist.txt $WORKCONFIG
	cp -vu ~/ta.zsh $WORKCONFIG

	# New && old
	cp -vu ~/.config/conky/conky.conf $WORKCONFIG
	cp -vu ~/.conkyrc $WORKCONFIG

	cp -vu ~/.weechat/weechat.conf "$WORKCONFIG/.weechat/"
	cp -vu ~/.weechat/irc.conf "$WORKCONFIG/.weechat/"

	cd "$WORKCONFIG"
	git diff
	git status
	echo "Commit message: "
	read commitMessage
	git commit -am "$commitMessage"
	git push
}

delayedShutdown(){
	echo "Shutdown in 10 seconds"
	for i in {1..10}
	do
		echo "$i"
		sleep 1
	done
	sudo poweroff
}

morsmordre(){
	packConfig
	delayedShutdown
}
