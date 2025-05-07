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

# Adds Homebrew to $PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh" --no-use # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# JDK
export JAVA_HOME=~/.sdkman/candidates/java/current

# Android Studio
export ANDROID_HOME="$HOME"/Library/Android/sdk
export PATH="$PATH":"$ANDROID_HOME"/emulator
export PATH="$PATH":"$ANDROID_HOME"/tools
export PATH="$PATH":"$ANDROID_HOME"/tools/bin
export PATH="$PATH":"$ANDROID_HOME"/platform-tools

# Arcanist
export PATH="$PATH":~/src/arcanist/bin

# Add node_modules/.bin to $PATH
export PATH="$PATH":./node_modules/.bin

# Claude needs this to be able to auto-update
# See here: https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview#auto-updater-permission-options
export PATH=~/.npm-global/bin:$PATH

# Cargo
. "$HOME/.cargo/env"

# Nix environment
export PATH="$HOME"/.nix-profile/bin:/nix/var/nix/profiles/default/bin:"${PATH}"

# sdkman (feels strongly that it should be at the bottom)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# pnpm
export PNPM_HOME="/Users/ashoat/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
