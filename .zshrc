# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git docker docker-compose gpg-agent kubectl)
source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR="nvim"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# ASDF setup
export ASDF_DATA_DIR="$HOME/.asdf"
export PATH="$ASDF_DATA_DIR/shims:$PATH"

fpath=($ASDF_DATA_DIR/completions $fpath)
autoload -Uz compinit && compinit

# Secret environment variables
source ~/.secrets_env_vars

# Aliases

alias l="ls -la"
alias ssh-connections="sudo lsof -i -n | egrep '\<ssh\>'"
alias dup="docker-compose up -d"
alias dps="docker ps"
alias dstop="docker-compose stop"
alias ddown="docker-compose down"
alias dkill="docker kill \`docker ps -q\`"
alias clear-branches="g branch -D \`git branch | grep -v master | grep -v main \`; git fetch -p"
