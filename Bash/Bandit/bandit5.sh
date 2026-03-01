#!/bin/bash

sshpass -p '4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw' ssh -q bandit5@bandit.labs.overthewire.org -p 2220 "find ./inhere/ -type f ! -executable -size 1033c | xargs  cat | tr -d '[:space:]';echo " | tee /dev/tty | tr -d '\n' | xclip -selection clipboard 
