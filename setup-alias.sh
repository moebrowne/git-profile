#!/bin/bash

cat << 'ALIAS' >> ~/.bash_aliases
alias git='unset GIT_SSH_COMMAND; git config SSH.keypath &> /dev/null; test $? -eq 0 && export GIT_SSH_COMMAND="ssh -i $(/usr/bin/git config SSH.keypath)"; git'
ALIAS
