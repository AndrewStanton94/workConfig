#!/bin/zsh
export WORKCONFIG="$HOME/Downloads/workConfig"

getFromApt() {
	echo "Installing from the apt repos"
	echo "$WORKCONFIG/getFrom/debReb.txt"
	sudo apt install `cat $WORKCONFIG/getFrom/debReb.txt`
}

materialize(){
	echo "Assuming update: unpacking config only"
	cd "$WORKCONFIG"
	git pull
}

colonize(){
	echo "First time set up"
	echo "Git configuring"
	git config --global push.default simple
	git config --global user.email up683693@myport.ac.uk
	git config --global user.name "Andrew Stanton"

	getFromApt

	unpackConfig

	echo "Getting code from github"
	# Vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	# Patched Fonts
	git clone https://github.com/powerline/fonts.git ~/fonts
	~/fonts/install.sh

	echo "About to install ZSH. Once that is done you will need to:\n\tCopy .zshrc from workConfig\n\tConfigure the terminal to use powerline patched font\n\tOpen a new terminal to see it working"
	# oh-my-zsh
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
}
