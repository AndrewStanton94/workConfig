#!/bin/zsh
export WORKCONFIG="$HOME/Downloads/workConfig"

getFromApt() {
	sudo apt install `cat $HOME/Downloads/workConfig/getFrom/debReb.txt`
}

getFromGit() {
	# oh-my-zsh
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
	# Vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	# Patched Fonts
	git clone https://github.com/powerline/fonts.git ~/fonts
	~/fonts/install.sh
}

unpackConfig() {
	cp -vu "$WORKCONFIG/.zshrc" ~
	cp -vu "$WORKCONFIG/.vimrc" ~
	cp -vu "$WORKCONFIG/.tmux.conf" ~
	cp -vu "$WORKCONFIG/morsmordre.zsh" ~
	cp -vu "$WORKCONFIG/ta.zsh" ~

	cp -vu "$WORKCONFIG/.weechat/weechat.conf" ~/.weechat/
	cp -vu "$WORKCONFIG/.weechat/irc.conf" ~/.weechat/
}

materialize(){
	echo "Assuming update: unpacking config only"
	unpackConfig
}
