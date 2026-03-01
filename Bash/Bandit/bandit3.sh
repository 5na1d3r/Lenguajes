#!/bin/bash

sshpass -p 'MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx' ssh -q bandit3@bandit.labs.overthewire.org -p 2220 'cat ./inhere/...Hiding-From-You' | tr -d '\n' | tee /dev/tty | xclip -selection clipboard
