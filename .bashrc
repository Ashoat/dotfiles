#!/bin/bash

# This is a better prompt
PS1="\u@\h [\w]$ "

# vi keybindings (Bash-only)
set -o vi

# Readline everything
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

# Typescript shorthands
alias tscall="yarn typecheck --pretty | less -R +Gg"

# Load shell completions only if 'complete' exists
if type complete &>/dev/null; then
  # nvm completion
  if [[ -r "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ]]; then
    . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
  fi
  # sdkman completion
  if [[ -r "$HOME/.sdkman/contrib/completion/bash/sdk" ]]; then
    . "$HOME/.sdkman/contrib/completion/bash/sdk"
  fi
fi
