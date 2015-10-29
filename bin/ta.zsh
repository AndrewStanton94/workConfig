ta() {
    sessions=$(tmux list-sessions)
    num=$(echo "$sessions"| wc -l)
    if [ "$sessions" = "" ];
    then
        read -p "Creating first session, name: " sessionName
        tmux new -s $sessionName
    else
        if [ "$num" -gt 1 ]
        then
            echo "$sessions"
            read -p "Choose session: " selectedSession
            tmux a -t $selectedSession
        else
            tmux a
        fi
    fi
}

ta
