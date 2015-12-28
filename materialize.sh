#!/bin/zsh
export WORKCONFIG="$HOME/Downloads/workConfig"

getFromApt() {
	sudo apt install `cat $HOME/Downloads/workConfig/getFrom/debReb.txt`
}

getFromGit() {
	# Vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	# Patched Fonts
	git clone https://github.com/powerline/fonts.git ~/fonts
	~/fonts/install.sh
	# oh-my-zsh
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
}

unpackConfig() {
	cp -vu "$WORKCONFIG/.zshrc" ~
	cp -vu "$WORKCONFIG/.vimrc" ~
	cp -vu "$WORKCONFIG/.tmux.conf" ~
	cp -vu "$WORKCONFIG/morsmordre.zsh" ~
	cp -vu "$WORKCONFIG/materialize.sh" ~
	cp -vu "$WORKCONFIG/ta.zsh" ~

	cp -vu "$WORKCONFIG/.weechat/weechat.conf" ~/.weechat/
	cp -vu "$WORKCONFIG/.weechat/irc.conf" ~/.weechat/
}

materialize(){
	echo "Assuming update: unpacking config only"
	unpackConfig
}

colonize(){
	echo "First time set up"
	getFromApt
	unpackConfig
	getFromGit
	git config --global push.default simple
	git config --global user.email up683693@myport.ac.uk
	git config --global user.name "Andrew Stanton"
}
