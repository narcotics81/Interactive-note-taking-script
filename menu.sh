#!/bin/bash

# main menu script

  echo "What is your name?"
read USER
  echo "Hello $USER. Please choose an option:"
  echo "read"
  echo "write"
  echo "search"
  echo "math"
  echo "exit"

# Prompts user for a filepath to open with the cat command, piped into less.
# if user prefferes a different option, feel free to edit.

read option
if [[ $option == "read" ]]; then
  echo "Cool. What would you like to read?"
  echo "Please provide the filepath:"
read filepath
cat $filepath | less

# enables the script to keep running after user saves and closes their work.
# Pauses briefly then prompts user to make a menu choice

wait -n
sleep 1
clear


  echo "That was fun! To do something else, please type menu. To exit, type exit"
read command

# Pulls the menu back up so user can choose another option

if [[ $command == "menu" ]]; then
bash /home/$USER/bin/menu.sh

# exits the script with a goodbye message

elif [[ $command == "exit" ]]; then
  echo "Okay. Come back if you need anything else."
sleep 2
clear
 fi
fi

# Opens a file in nano editor. feel free to replace with your preferred editor

if [[ $option == "write" ]]; then
  echo "No problem. Enter the filepath and we will open it up in nano editor"
read filepath
nano $filepath
wait -n
sleep 1
clear
  echo "Good times! To continue working, type menu. To leave, type exit."
read command
if [[ $command == "menu" ]]; then
bash /home/$USER/bin/menu.sh
elif [[ $command == "exit" ]];then
echo "Cool. Come on back if you need anything else. BYE!!"
sleep 2
clear
 fi
fi

# Uses grep command to do a user search through a group of text files located
# in a specified folder

if [[ $option == "search" ]]; then
  echo "Okay. Lets use grep to find what your looking for"
read search
grep -inwr $search ~/documents/*.txt *.sh
wait -n
sleep 1
  echo "Is there anything else?"
read command
if [[ $command == "menu" ]]; then
bash /home/$USER/bin/menu.sh
elif [[ $command == "exit" ]]; then
  echo "Okay. Come back if you want help with something else."
sleep 2
clear
 fi
fi

# Opens a python3 environment using the native terminal program. This command can be easily
# to run in your preferred environment
# The script has a 65 second timer to give user time to read a brief tutorial
# before opening environment. If you want to skip the tutorial, just choose no at the prompt.

if [[ $option == "math" ]]; then
  echo "Awesome. Lets open a python environment and do some arithmetic."
  echo "Would you like a quick lesson?"
read response
if [[ $response == "yes" ]]; then
  echo "Sure thing. Lets begin"
sleep 1
  echo "Math operators in Python are the same as in basic arithmetic."
  echo "the plus symbol (+) is addition. The minus (-) symbol is subtraction."
  echo "Division is a forward slash (/). Multiplication is the asterisk symbol (*)"
  echo "You can get the remainder of two numbers by using the percent symbol (%)."
  echo "An example would be  12 % 5 = 2 with a remainder of 2."
  echo "You multiply by powers using (**) 3 ** 4 = 81"
  echo "Python follows the P.E.M.D.A.S system"
  echo "Problems written inside of"
  echo "Parenthesis have first priority. After that python takes care of any"
  echo "Exponents. Then it looks to see if there is any"
  echo "Multiplication or "
  echo "Division problems. After that it checks for any"
  echo "Addition problems, then last but not least,"
  echo "Subtraction."
  echo "(6 ** 3) + (8 * 3 / 12) - 7 = 211 "
  echo "(6 ** 3) = 216"
  echo "8 * 3 = 24"
  echo "24 / 2 = 2"
  echo "So using P.E.M.D.A.S, python breaks the equation down to"
  echo "216 + 2 - 7 = 211"
  echo "To exit the python ide just type exit() to go back to the main menu"
  echo "That should be enough to get you started. If you are interested in learning"
  echo "More, there are plenty of good resources online that you can check out."
  echo "And without any more waiting, lets do some math."
sleep 1m 5s
python3
wait -n
sleep 2
clear
  echo "You are getting a little better at that every time!!"
  echo "To continue type menu. To exit, type exit"
read command
if [[ $command == "menu" ]]; then
bash /home/$USER/bin/menu.sh
elif [[ $command == "exit" ]]; then
  echo "Bye then. See you later!!"
sleep 2
clear
fi
elif [[ $response == "no" ]]; then
  echo "Awesome. I can tell already that you know exactly what you are doing."
python3
wait -n
sleep 1
  echo "You are a wizard at math. Is there anything else I can do for you?"
read command
if [[ $command == "menu" ]]; then
bash /home/$USER/bin/menu.sh
elif [[ $command == "exit" ]]; then
echo "Okay. come back later if you are bored"
sleep 2
clear
  fi
 fi
fi

# Exits the script from the main menu

if [[ $option == "exit" ]]; then
  echo "Allrighty then. We can do something later if you want!!"
sleep 2
clear
fi



