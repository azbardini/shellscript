#/bin/bash

echo "What's THE SECRET PASSWORD?"

#Puts the user's answer in the variable answer
read answer

#If answer is dog dog, print date!
test "$answer" == "dog" && date

