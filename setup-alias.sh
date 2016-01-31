#!/bin/bash

GIT_AUTHOR_NAME='testname' GIT_AUTHOR_EMAIL='test@domain.tld' GIT_COMMITTER_NAME='testname' GIT_COMMITTER_EMAIL='test@domain.tld' GIT_SSH_COMMAND='ssh -i /tmp/gitkey' git $@

