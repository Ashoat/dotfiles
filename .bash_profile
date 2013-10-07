#!/bin/bash

# This is a better prompt
PS1="\u@\h [\w]# "

# Duh
export EDITOR=vim
set -o vi

# More paths
export PATH=~/bin:$PATH:/opt/local/bin:/usr/local/share/python:/usr/local/share/python

# Readline EVERYTHING!!
alias scheme="rlwrap scheme"
alias scsh="rlwrap scsh"
alias mzscheme="rlwrap mzscheme"
alias sml="rlwrap sml"
alias rhino="rlwrap rhino"
