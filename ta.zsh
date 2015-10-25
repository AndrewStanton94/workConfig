ta() {
    sessions=$(tmux list-sessions)
    num=$(echo "$sessions"| wc -l)
    echo "$sessions"
    # echo "$num"
    if [ "$sessions" = "" ];
    then
        read -p "Creating first session, name: " sessionName
        tmux new -s $sessionName
    else
        if [ "$num" -gt 1 ]
        then
            # echo "more than 1"
            read -p "Choose session: " selectedSession
            echo "$selectedSession"
            tmux a -t $selectedSession
            # select s in $sessions
            # do
            #     echo "$s chosen"
            # done
        else
            # echo "One session"
            tmux a
        fi
    fi
}

ta
