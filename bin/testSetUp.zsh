#!/bin/zsh
tmux new-session -d
for x in {1..10}
do
    tmux split-window -t 0
    for x in {1..4}
    do
        tmux split-window -t "$x" -h
    done
    tmux select-layout tiled
    for x in {5..8}
    do
        tmux split-window -t "$x" -h
    done
done
tmux select-layout tiled
tmux setw synchronize-panes
tmux a
