# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(git python ruby virtualenv rbenv vim)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR=vim
export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

alias l="ls -la"
