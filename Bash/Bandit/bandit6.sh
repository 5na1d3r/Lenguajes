#!/bin/bash
sshpass -p "HWasnPhtq9AVKe0dmk45nxy20cvUa6EG" ssh -q bandit6@bandit.labs.overthewire.org -p 2220 "find / -type f -group bandit6 -user bandit7 2>/dev/null | xargs  cat" | tee /dev/tty | tr -d '\n' | xclip -selection clipboard 
