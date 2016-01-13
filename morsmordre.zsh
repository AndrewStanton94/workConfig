#!/bin/zsh
# Need to source the file. Not run.
# . ./morsmordre.zsh
export WORKCONFIG="$HOME/Downloads/workConfig"

packConfig(){
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
