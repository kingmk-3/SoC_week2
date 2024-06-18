#!/bin/bash
separtor=""
for ((i=0;i<$(tput cols)/2;i++));do
separtor+="/"
done
for ((i=0;i<$(tput cols);i++));do
separtor+="\\"
done
printer_under_line() {                   # to display the underlines

    echo ""
    for ((filled=0;filled<$(tput cols);filled++));do           #you were intoduced to this, so you weren't allowed this tputs cols in the assignment, but you could've hard coded this part
        local line_bar=""
        for ((i = 0; i < filled; i++)); do
            line_bar+="="
        done
        # Print the line bar
        echo -ne "\r$line_bar"
        sleep 0.005
    done
}
printer_separator() {                   # to display the underlines

    echo ""
    for ((filled=0;filled<$(tput cols)/2;filled++));do
        local separator_bar=""
        for ((i = 0; i < filled; i++)); do
            separator_bar+="/"
        done
        for ((i = filled; i < $(tput cols)-filled; i++)); do
            separator_bar+=" "
        done
        for ((i = 0; i < filled; i++)); do
            separator_bar+="\\"
        done
        # Print the separtor bar
        echo -ne "\r$separator_bar"
    done
}

printer_under_line
printer_under_line
./solution_week2/maker.sh "   Welcome"
printer_separator
echo ""
read -p "  | Enter Your NAME : " name
./solution_week2/maker.sh "Hello $name"
x=1
while [[ $x == 1 ]];do
read -p "  | Entre 1(for running basic file manager), 2(for running any command), exit(to exit) : " options
if [[ $options == "1" ]];then
echo "  | You need to add basic file manager by yourself"
fi
if [[ $options == "2" ]];then
read -p "  | Entre you command : " command
echo "   | Output For $command :"
echo -e "$under_line"
$command
echo -e "$under_line"
fi
if [[ $options == "exit" ]];then
break;
fi
done