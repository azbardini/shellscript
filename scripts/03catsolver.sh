#/bin/bash

printf "What do you want, fella?\n"
read answer

#if the test is true, then it'll be printed the message for the cat
if [ $answer = "food" ]
then 
        printf "There's meat in the fridge, dumbass!\n"
else
        #now if his last answer was anything but food, you'll make this question 
        printf "Want some cuddle, so? [yes/no]\n"
        read answer
        #if his answer is yes again, you tell him you are busy,
        #else, you tell him to top annoying!
        if [ $answer = "yes" ]
        then
                printf "Sorry, I'm busy learning shell scripting.\n"
        else
                printf "So stop annoying me!\n"

        fi 
fi
