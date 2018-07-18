---
title: Shell Scripting for Newbies 02
published: false
description: Learn the basics of shell scripting to automatize your tasks!
tags: bash, shell, script, newbies
---

###Variables###

With simple variables, you can save values using *=* and find then putting *$* in your *echo*:

```sh
#/bin/bash

var="Yes, did it!"
echo "Have you done it? $var"
```
The result of running this script is:

```
Have you done it? Yes, did it!
```

###Talking to the user###

But let's do something useful with this concepts. Imagine you can only show the date for the user if he knows **the secret password**! You might want to ask him the password, so do it by using the command **read**. 

Then, if the user type the right answer (dog), the date is shown, otherwise, the program is closed.

```sh
#/bin/bash

echo "What's THE SECRET PASSWORD?"

#Puts the user's answer in the variable answer
read answer

#If answer is dog dog, print date!
test "$answer" == "dog" && date
```
Let's understand it:
- The operator **==** means **equals to**
- The operator **&&** means **and**

As we had already saved the user's answer in the variable **$answer**, when we compare the variable **$answer** to **"dog"**, if they are the same, it prints the date; else, it finishes the program.

Therefore, the result of the script must be both below:

```
What's THE SECRET PASSWORD?
dog
Ter Jul 17 23:32:39 -03 2018
```
```
What's THE SECRET PASSWORD?
cat
```
###I'm not convinced!###

So let's crack this code a bit more! 

```sh
#/bin/bash

echo "What's THE SECRET PASSWORD?"

#Puts the user's answer in the variable answer
read answer

#REVERSE LOGIC!
#If answer is not dog, exit; Else, print date!
test "$answer" != "dog" && exit
date
```
Stuff is different here:
- The operator **!=** means **different**

Now we use the reverse logic to do the same thing. This time, the command **exit** can **only** happen if the user's answer is different from **"dog"**.
The result is exactly the same as in the previous script!
