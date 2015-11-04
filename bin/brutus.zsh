#!/bin/zsh
for n in {0..100000}
do
    echo "Iteration $n"
    for u in `cat urls.txt`
    do
        echo $u
        # sleep 1
        curl $u -L -sS --socks 10.50.16.225 -m 10
    done
done
