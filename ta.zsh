ta() {
    sessions=$(tmux list-sessions)
    echo "$sessions"
    echo "$sessions"| wc -l
    if (echo "$sessions"| wc -l)>0
    then
        echo "more than 0"
        read -p "Choose session: " selectedSession
        echo "$selectedSession"
        tmux a -t $selectedSession
    else
        echo "less than 0"
    fi
}

ta
