```
 "A good engineer is a lazy engineer. They should always hate doing the same things over and over again." - Some guy that wanted to optimize his workflow ;p
```

# Bash Scripting

Bash is the shell, or command language interpreter, for the GNU operating system. The name is an acronym for the ' Bourne-Again SHell ', a pun on Stephen Bourne, the author of the direct ancestor of the current Unix shell sh , which appeared in the Seventh Edition Bell Labs Research version of Unix.  In the context of Bash scripts, we are telling the Bash shell what it should do. A Bash script is a plain text file which contains a series of commands.

## Download Bash for your OS

* https://git-scm.com/downloads [2 in 1 Git Bash Terminal]

## Scripts Info + Dependencies

* **pomo.sh** : Notorious Pomodoro Timer for highly-focused, distraction free work. Requires ***notify-send***. notify-send is a program to send desktop notifications, inform the user about an event or display some form of information without getting in the user's way. This is of course useful when setting any kind of timer. Download from http://vaskovsky.net/notify-send/. Once downloaded, unzip and configure environment PATH variable to point to inside the unzipped folder so that your terminal has access to the notify-send.exe file. The final step is to configure your .bash_profile file by adding the line below. Now you can just type in 'begin-pomodoro' in your terminal and the 25-minute timer will start. <br/> ***- Update 1.1: 25 min Work Timer + 5 min Break Timer. Fully tested + notifications are now sent correctly***

```
alias begin-pomodoro='sh ~/Desktop/bash-scripts/pomo.sh 25 5 "Pomodoro" "Pomodoro started, you have 25 minutes left" "Focus period ended, take a 5 minute break" "Pomodoro Session Ended"'
```

**N.B. Make sure to clone this repo onto your Desktop if you want pomo.sh to work. Otherwise, you need to change the file destination arguement of the above command to point to where you've saved the file on your system**

More scripts coming...

