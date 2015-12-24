getFromApt() {
	sudo apt install `cat $HOME/Downloads/workConfig/getFrom/debReb.txt`
}

getFromGit() {
	# oh-my-zsh
	#sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
	# Vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	# Patched Fonts
	git clone https://github.com/powerline/fonts.git
	./fonts/install.sh
}

unpackConfig() {
	export WORKCONFIG="$HOME/Downloads/workconfig"
	cp $WORKCONFIG/.zshrc ~
	cp $WORKCONFIG/.vimrc ~
	cp $WORKCONFIG/.tmux.conf ~
	cp $WORKCONFIG/morsmordre.zsh ~

	cp "$WORKCONFIG/.weechat/weechat.conf" ~/.weechat/
	cp "$WORKCONFIG/.weechat/irc.conf" ~/.weechat/
}
