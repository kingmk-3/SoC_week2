#!/bin/bash

white_space=""
for ((i=0;i<$(tput cols);i++));do   #you were intoduced to this, so you weren't allowed this tputs cols in the assignment, but you could've hard coded this part
white_space+=" "
done
show_progress() {                   # to display the progress bar
  local progress=$1
  local total_width=50

  local filled=$((progress * total_width / 100))
  local empty=$((total_width - filled))

  local progress_bar=""
  for ((i = 0; i < filled; i++)); do
    progress_bar+="#"
  done
  for ((i = 0; i < empty; i++)); do
    progress_bar+="_"
  done

  # Print the progress bar
  echo -ne "\r So Far Progess :|  $progress_bar" "$((progress))%"
}

# Total number of steps (divide the steps appropiatily for every task)
total_steps=100
echo -e "lessgo: Below is your expample progress bar but similary you can create a progress table"
echo -e "                   ..................................................."
#As eg example insert this in first for loop of first task(liking creating the folders, and say we want to get to 0.3 of total steps)
for ((step = 0; step <= total_steps*3/10; step++)); do
  show_progress "$step"
  echo -ne " || doing task1"
  sleep 0.1 
done
#To give a notification for user
sleep 1
#For that, we need to fill with white spaces(run the script after commenting these white spaces, and you will see the difference)
#Note this just one way to do it, but you can use the ANSI escape sequences(although you weren't allowed to use this)
echo -ne "\r$white_space"
for ((step = 0; step <= total_steps*4/10; step++)); do
show_progress "$total_steps*3/10"
echo -ne " || starting next task"
if [[ $((step%6)) == 0 ]];then
echo -ne " . "
fi
if [[ $((step%6)) == 1 ]];then
echo -ne " . ."
fi
if [[ $((step%6)) == 2 ]];then
echo -ne " . . ."
fi
if [[ $((step%6)) == 3 ]];then
echo -ne " . . . ."
fi
if [[ $((step%6)) == 4 ]];then
echo -ne " . . . . ."
fi
if [[ $((step%6)) == 5 ]];then
echo -ne " . . . . . ."
fi
sleep 0.3
echo -ne "\r$white_space"
done
echo -ne "\r$white_space"
#now lets print the progress bar for second task(moving the files and renaming)
for ((step = total_steps*3/10; step <= total_steps; step++)); do
  show_progress "$step"
  echo -ne " || doing task2"
  sleep 0.1 
done
echo -e "\n                   ..................................................."
echo ""

