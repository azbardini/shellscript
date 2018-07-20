---
title: Shell Scripting for Newbies 03
published: true
description: Learn the basics of shell scripting to automatize your tasks!
tags: bash, shell, script, newbies
cover_image: https://thepracticaldev.s3.amazonaws.com/i/icz0wk9u1yom8uajyr8w.jpg
---

###Conditionals###

In the last tutorial, you've given a look at how to interact with the user and how to return simple outputs accordingly to the user interaction.

Ironically, your cat's been using the computer lately to ask for things. Of course it's not working, but you can solve this problem! Lets talk to your cat!

First of all, we'll want to ask him what does he want. Let's do it this way:

```sh
#/bin/bash

printf "What do you want, fella?\n"
read answer
```
- TIP: **printf** is a better alternative to the command **echo**. By now, it's just the same, except from you'll need to write **\n** in the end of the sentences in order to go to the next line.

Now that you've got his answer in the variable *answer*, we'll see this NEW <del>hell no</del> AWESOME logic: The **if** command. It works almost as simple as it is written, but with some caveats. We already know that it's possible to test the truth of a statement with the command **test**, so let's just tell the computer what to do **if** it's true:

```sh
#/bin/bash

printf "What do you want, fella?\n"
read answer

#if the test is true, then it'll be printed the message for the cat
if test $answer = 'food'
then printf "There's meat in the fridge, dumbass!\n"
fi 
```

Here we've literally responded to the cat to find his own food! To tell the computer where the **if** conditional ends, just use <del>this is not a joke</del> the command **fi**.
There's a simple trick to make the code even better readable. We can exchange the command **test** to a pair of **[ ]** around the statements, have a look:

```sh
#/bin/bash

printf "What do you want, fella?\n"
read answer

#if the test is true, then it'll be printed the message for the cat
if [ $answer = 'food' ]
then printf "There's meat in the fridge, dumbass!\n"
fi
```

Cool, but your lil' kitty might not really know what he wants. So let's just add another literal command, say hello to the **else** command! In case his answer is anything but food, let's just ignore it <del>poor cat</del> and give him the cuddling option.

```sh
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
```

- TIP: Learning how to use the **if** command is actually intuitive. The <del>boring</del> funny part is understanding completely the **test** command. You can have a deeper look at bash expressions and when you should use them clicking [here](https://www.gnu.org/software/bash/manual/html_node/Bash-Conditional-Expressions.html).

Now this is getting bigger! Once the cat's answer is anything but food in the first question, we give him another question with <del>please stop</del>
 two more options! Notice that this question is only made if the first answer **IS NOT** food. The possible outputs of our script are shown below.

```
What do you want, fella?
food
There's meat in the fridge, dumbass!
```
```
What do you want, fella?
idk
Want some cuddle, so? [yes/no]
yes
Sorry, I'm busy learning shell scripting.
```
```
What do you want, fella?
communism
Want some cuddle, so? [yes/no]
no
So stop annoying me!
```

##About##

You can find all my scripts in [my github](https://github.com/azbardini/shellscript)!

Follow me for more articles!
 


