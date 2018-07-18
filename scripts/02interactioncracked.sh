#/bin/bash

echo "What's THE SECRET PASSWORD?"

#Puts the user's answer in the variable answer
read answer

#REVERSE LOGIC!
#If answer is not dog, exit; Else, print date!
test "$answer" != "dog" && exit
date
