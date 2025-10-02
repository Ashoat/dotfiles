# Silence annoying macOS warning
export BASH_SILENCE_DEPRECATION_WARNING=1

export EDITOR=vim

export CLICOLOR=1

# Adds Homebrew to $PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh" --no-use

# JDK
export JAVA_HOME=~/.sdkman/candidates/java/current

# Android Studio
export ANDROID_HOME="$HOME"/Library/Android/sdk
export PATH="$PATH":"$ANDROID_HOME"/emulator
export PATH="$PATH":"$ANDROID_HOME"/cmdline-tools/latest/bin
export PATH="$PATH":"$ANDROID_HOME"/platform-tools

# Arcanist
export PATH="$PATH":~/src/arcanist/bin

# Add node_modules/.bin to $PATH
export PATH="$PATH":./node_modules/.bin

# Claude auto-updater paths
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.yarn/bin:$PATH

# Nix environment
export PATH="$HOME"/.nix-profile/bin:/nix/var/nix/profiles/default/bin:"${PATH}"

# pnpm
export PNPM_HOME="/Users/ashoat/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# sdkman (feels strongly that it should be at the bottom)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
