ta() {
    isModern
    if [ $? -eq 1 ]
    then
        echo "Yay Modern"
        tmux attach \; choose-tree
    else
        echo "Nope Retro"
        oldTa
    fi
}

isModern() {
    v=$(tmux -V | cut -d" " -f2)
    mainVersion=$(echo "$v"| cut -d"." -f1)
    subVersion=$(echo "$v"| cut -d"." -f2)
    # echo "main $mainVersion \n sub $subVersion"
    if [ "$mainVersion" -gt 1 ]
    then
        return 1
    else
        if [ "$subVersion" -ge 8 ]
        then
            return 1
        else
            return 0
        fi
    fi
}

oldTa() {
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
