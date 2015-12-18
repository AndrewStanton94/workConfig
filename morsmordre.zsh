#!/bin/zsh
# Need to source the file. Not run.
# . ./morsmordre.zsh
export WORKCONFIG="$HOME/Downloads/workconfig"

morsmordre(){
	cp -v ~/.zshrc $WORKCONFIG
	cp -v ~/.vimrc $WORKCONFIG
	cp -v ~/.tmux.conf $WORKCONFIG
	cp -v ~/morsmordre.zsh $WORKCONFIG

	cp -v ~/.weechat/weechat.conf "$WORKCONFIG/.weechat/"
	cp -v ~/.weechat/irc.conf "$WORKCONFIG/.weechat/"

	cd "$WORKCONFIG"
	git add -A
	git status
	echo "Commit message: "
	read commitMessage
	git commit -m "$commitMessage"
}
