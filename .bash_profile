#!/bin/bash

# Login shell environment
[[ -f ~/.profile && -r ~/.profile ]] && . ~/.profile

# Load interactive niceties only when interactive
[[ $- == *i* && -r ~/.bashrc && -f ~/.bashrc ]] && . ~/.bashrc
