home=$(stat ~/.vimrc -c=%Y|sed s/\=/''/)
# echo $home|cut -d= -f1
repo=$(stat ~/Downloads/workConfig/.vimrc -c=%Y|sed s/\=/''/)
# echo $repo

if [ $home -ge $repo ]
	then
		echo "$home > $repo (h>r)"
		cp ~/.vimrc ~/Downloads/workConfig/
	else
		cp ~/Downloads/workConfig/.vimrc ~/
		echo " $repo > $home(r>h)"
fi
