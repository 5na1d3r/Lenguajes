#!/bin/bash

sshpass -p 'ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If' ssh -q bandit1@bandit.labs.overthewire.org -p 2220 "cat ./'-'" | tr -d '\n' | tee /dev/tty | xclip -selection clipboard
