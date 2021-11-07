#!/bin/bash

# Silence annoying macOS warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# This is a better prompt
PS1="\u@\h [\w]$ "

# Duh
export EDITOR=vim
set -o vi

# Color
export CLICOLOR=1

# Readline EVERYTHING!!
alias scheme="rlwrap scheme"
alias scsh="rlwrap scsh"
alias mzscheme="rlwrap mzscheme"
alias sml="rlwrap sml"
alias rhino="rlwrap rhino"

# Clean vim files
function rmvim {
  local vimdir vimfile
  vimdir=$(echo "$1" | rev | cut -d / -f '2-'  | rev)
  vimfile=$(echo "$1" | rev | cut -d / -f '1'  | rev)
  echo "rm ${vimdir}/.${vimfile}.sw*"
  rm ${vimdir}/.${vimfile}.sw*
}

# Flow shorthands
alias flowall="flow --show-all-errors --show-all-branches --color=always | less -R +Gg"
alias flowerrors="flow --show-all-errors --color=always | grep '\e\[31;1mError' | less -R +Gg"
