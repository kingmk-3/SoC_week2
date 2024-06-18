#!/bin/bash
string="$*"
len=${#string}
touch temp.txt work.txt
prev=0
for ((i=1; i<=len; i++))
do
    curr=$(echo "$string" | cut -c $i)
    if [[ $curr == "a" || $curr == "A" ]]; then
        curr="$(echo -e "       _ _      \n      /   \     \n     / / \ \    \n    / /   \ \   \n   / /=====\ \  \n  / /       \ \ \n /_/         \_\\")"
        let prev=prev+17
    elif [[ $curr == "b" || $curr == "B" ]]; then
        curr="$(echo -e "   _ _ _ _   \n /  _ _ _ \  \n | |     | | \n | |____/ /  \n | |     \ \ \n | |_ _ _/ | \n \ _ _ _  /  ")"
        let prev=prev+14
    elif [[ $curr == "c" || $curr == "C" ]]; then
        curr="$(echo -e "     _ _ _ _ _\n  /  _ _ _ _ |\n / /          \n | |          \n | |          \n  \ \ _ _ _ _ \n    \_ _ _ _ |\n")"
        let prev=prev+15
    elif [[ $curr == "d" || $curr == "D" ]]; then
        curr="$(echo -e "   _ _ _     \n |  _____ \  \n | |     \ \ \n | |      | |\n | |      | |\n | |_____/ / \n | _ _ _ /   ")"
        let prev=prev+14
    elif [[ $curr == "e" || $curr == "E" ]]; then
        curr="$(echo -e "  _ _ _ __ \n |  ______|\n | |       \n | |______ \n | |       \n | |______ \n | _ _ _ _|")"
        let prev=prev+12
    elif [[ $curr == "f" || $curr == "F" ]]; then
        curr="$(echo -e "  _ _ _ __ \n |  ______|\n | |       \n | |______ \n | |______|\n | |       \n |_|       ")"
        let prev=prev+12
    elif [[ $curr == "g" || $curr == "G" ]]; then
        curr="$(echo -e "    _ _ _ _ _ _\n  /  _ _ _ _ _/\n / /           \n | |     _ _ __\n | |    |  _  |\n  \ \ _ | | | |\n   \_ _ _ | |_|\n")"
        let prev=prev+16
    elif [[ $curr == "h" || $curr == "H" ]]; then
        curr="$(echo -e "  __       __ \n |  |     |  |\n |  |_ _ _|  |\n |           |\n |   _ _ _   |\n |  |     |  |\n |__|     |__|")"
        let prev=prev+15
    elif [[ $curr == "i" || $curr == "I" ]]; then
        curr="$(echo -e "  _ _ _ _ _ \n |_ _   _ _|\n     | |    \n     | |    \n     | |    \n  _ _| |_ _ \n |_ _ _ _ _|")"
        let prev=prev+13
    elif [[ $curr == "j" || $curr == "J" ]]; then
        curr="$(echo -e "          __ \n         |  |\n         |  |\n  _      |  |\n | |     |  |\n  \ \ _ _|  |\n   \ _ _ _ / \n")"
        let prev=prev+14
    elif [[ $curr == "k" || $curr == "K" ]]; then
        curr="$(echo -e "  __    __  \n |  |  /  / \n |  | /  /  \n |  |/  /   \n |  |\  \   \n |  | \  \  \n |__|  \__\ ")"
        let prev=prev+13
    elif [[ $curr == "l" || $curr == "L" ]]; then
        curr="$(echo -e "  __          \n |  |         \n |  |         \n |  |         \n |  |         \n |  |_ _ _ _  \n | _ _  _ _ _|")"
        let prev=prev+15
    elif [[ $curr == "m" || $curr == "M" ]]; then
        curr="$(echo -e "  __      __ \n |  \   /   |\n |    \/    |\n | |\    /| |\n | |  \/  | |\n | |      | |\n |_|      |_|")"
        let prev=prev+14
    elif [[ $curr == "n" || $curr == "N" ]]; then
        curr="$(echo -e "  _        _ \n |  \     | |\n |   \    | |\n | |\ \   | |\n | | \ \  | |\n | |  \ \_| |\n |_|   \__ _|")"
        let prev=prev+14
    elif [[ $curr == "o" || $curr == "O" ]]; then
        curr="$(echo -e "   _ _ _ _   \n /   _ _   \ \n |  /    \  |\n | |      | |\n \  \    /  /\n  \   \_/  / \n   \_ _ _/   ")"
        let prev=prev+14
    elif [[ $curr == "p" || $curr == "P" ]]; then
        curr="$(echo -e "    _ _ _   \n /   ____ \ \n |  |    | |\n |  |____/ /\n |  _ _ _ / \n |  |       \n |__|       ")"
        let prev=prev+13
    elif [[ $curr == "q" || $curr == "Q" ]]; then
        curr="$(echo -e "   _ _ _ _   \n /   _ _   \ \n |  /    \  |\n | |   _  | |\n \  \__\ \/ /\n  \_ _ _\ \/ \n         \_\ ")"
        let prev=prev+14
    elif [[ $curr == "r" || $curr == "R" ]]; then
        curr="$(echo -e "    _ _ _   \n /   _ _  \ \n |  |   |  |\n |  |__/  / \n |   _   /  \n |  | \  \  \n |__|   \__\\")"
        let prev=prev+13        
    elif [[ $curr == "s" || $curr == "S" ]]; then
       curr="$(echo -e "          _____ \n        /  ____|\n       / /      \n      \ \       \n        / /     \n  ____ / /      \n |_____/        ")"
       let prev=prev+17
    elif [[ $curr == "t" || $curr == "T" ]]; then
       curr="$(echo -e "  _ _ _ _ __ \n |_ _    _ _|\n     |  |    \n     |  |    \n     |  |    \n     |  |    \n     |__|    \n")"
       let prev=prev+14
    elif [[ $curr == "u" || $curr == "U" ]]; then
        curr="$(echo -e "  _        _ \n | |      | |\n | |      | |\n | |      | |\n | |      | |\n \ \_ _ _/ / \n  \_ _ _ _/  \n")"
        let prev=prev+14
    elif [[ $curr == "v" || $curr == "V" ]]; then
        curr="$(echo -e " _            _\n \ \        / /\n  \ \      / / \n   \ \    / /  \n    \ \  / /   \n     \ \/ /    \n      \__/     ")"
        let prev=prev+16
    elif [[ $curr == "w" || $curr == "W" ]]; then
        curr="$(echo -e " _          _          _ \n \ \      /    \      / /\n  \ \    /      \    / / \n   \ \  /   /\   \  / /  \n    \ \/   /  \   \/ /   \n     \    /    \    /    \n      \__/      \__/     ")"
        let prev=prev+26
    elif [[ $curr == "x" || $curr == "X" ]]; then
        curr="$(echo -e "  __      __ \n |  |    |  |\n  \  \  /  / \n   \  \/  /  \n   /  /\  \  \n  /  /  \  \ \n |__/    \__|")"
        let prev=prev+14
    elif [[ $curr == "y" || $curr == "Y" ]]; then
        curr="$(echo -e "  __      __ \n |  |    |  |\n  \  \  /  / \n   \  \/  /  \n    |    |   \n    |    |   \n    |_.._|   ")"
        let prev=prev+14
    elif [[ $curr == "z" || $curr == "Z" ]]; then
        curr="$(echo -e "  _ _ _ _ _ \n |_____   / \n      /  /  \n     /  /   \n    /  /    \n  /  /_ _ _ \n |_ _ _ _ _|")"
        let prev=prev+14
    elif [[ $curr == " " ]]; then
        curr="$(echo -e "            \n            \n            \n            \n            \n            \n            ")"
        let prev=prev+13
    else
        echo "Character '$curr' is not supported."
    fi
    echo -e "$curr" > temp.txt
    echo -e "$(paste -d "\0" work.txt temp.txt)" > work.txt
    if [[ $(($(tput cols)-$prev)) -lt 26 ]];then        #26 is the maximum width any alphabet.
        let prev=0
        cat work.txt
        echo -e "\n"
        echo "" > work.txt
    fi
done
cat work.txt
rm  work.txt temp.txt
