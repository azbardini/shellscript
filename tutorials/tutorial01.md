---
title: Shell Scripting for Newbies
published: false
description: Learn the basics of shell scripting to automatize your tasks!
tags: bash, shell, script, newbies
---

Let's suppose you want to check your *any linux system* stats, you might probably use commands such as **w**, **date**, or **df**. That means you need to write three commands and check their results, one by one... Not the funniest hobby!

That's where shell scripting arrives: lets automatize tasks, and a little more...

###Hello Mars###

To start, let's just create an **hellomars.sh** file. Do this by typing in your terminal:
```sh
touch hellomars.sh
```

Then, use <del>vim</del> your finest editor to edit this file and have some <del>lack of</del> fun creating your first Hello Mars script!
```sh
#/bin/bash
echo "Hello Mars!"
```

Once created, give this file permission to be executed and execute the file itself by typing:
```sh
chmod +x hellomars.sh
./hellomars.sh
```
As you may have noticed, **echo** is the command to write something as output. The *#/bin/bash* is used to tell linux which interpreter it must use (there are plenty of them, *sh*, *bash*, *dash*...). The output of the script might be as follows:
```
Hello Mars!
```

###One after the other###

Now that you know how to write something in the screen, lets write something relevant. Putting all those first commands together, you can make another file such, let's call it *mysystem.sh*:

```sh
#/bin/bash
echo "Aliens using this computer:"
w
echo "What year am I?"
date
echo "Is there any computer left?"
df -h
```
- tip: -h flag turns *df* a little more *human readable*.

By running this script, the output must be something as shown below:

```
Aliens using this computer:
 22:13:13 up  1:54,  1 user,  load average: 0,55, 0,56, 0,60
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
bardini  tty7     :0               20:22    1:54m  2:28   0.60s /sbin/upstart --user
What year am I?
Ter Jul 17 22:13:13 -03 2018
Is there any computer left?
Filesystem      Size  Used Avail Use% Mounted on
udev            2,9G     0  2,9G   0% /dev
tmpfs           586M   17M  570M   3% /run
/dev/sda1       105G   33G   67G  33% /
tmpfs           2,9G   31M  2,9G   2% /dev/shm
tmpfs           5,0M  4,0K  5,0M   1% /run/lock
```
People might not understand the functions you are using in your script, so comment it using hashtags:


```sh
#/bin/bash
#This shows users in this computer
echo "Aliens using this computer:"
w

#This shows the date and time of this computer
echo "What year am I?"
date

#This shows the disk usage of the computer
echo "Is there any computer left?"
df -h
```

##About##

You can find all my scripts in [my github](https://github.com/azbardini/shellscript)!

Follow me for more articles!
