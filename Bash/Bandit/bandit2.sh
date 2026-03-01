#!/bin/bash

sshpass -p '263JGJPfgU6LtdEvgfWU1XP5yac29mFx' ssh -q bandit2@bandit.labs.overthewire.org -p 2220 'cat ./--spaces\ in\ this\ filename--' | tr -d '\n' | tee /dev/tty | xclip -selection clipboard  
