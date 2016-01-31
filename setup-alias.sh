#!/bin/bash

cat << 'ALIAS' >> ~/.bash_aliases
alias git='unset GIT_SSH_COMMAND; sshkey="$(/usr/bin/git config SSH.keypath)"; [ "$sshkey" != "" ] && export GIT_SSH_COMMAND="ssh -i $sshkey"; git'
ALIAS
