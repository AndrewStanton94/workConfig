google-chrome --new-window
for path in `cat $1`
do
	google-chrome "$2$path$3"
done
