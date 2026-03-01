#!/bin/bash

sshpass -p '2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ' ssh -q bandit4@bandit.labs.overthewire.org -p 2220 "find ./inhere -type f -exec file {} + | grep 'text' | awk -F ':' '{print \$1}' | xargs cat " | tee /dev/tty | tr -d '\n' | xclip -selection clipboard
