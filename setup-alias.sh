#!/bin/bash

cat << 'ALIAS' >> ~/.bash_aliases
unset GIT_SSH_COMMAND; git config -l | grep -q ssh.keypath; test $? -eq 0 && export GIT_SSH_COMMAND=\"ssh -i $HOME/.ssh/your-key\"; git
ALIAS
