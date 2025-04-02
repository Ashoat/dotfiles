#!/bin/bash

[[ -f ~/.profile ]] && . ~/.profile
[[ -f ~/.bashrc ]] && . ~/.bashrc
. "$HOME/.cargo/env"
export PATH="$HOME"/.nix-profile/bin:/nix/var/nix/profiles/default/bin:"${PATH}"
