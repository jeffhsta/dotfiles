# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git python ruby virtualenv rbenv vim docker docker-compose gpg-agent)

# User configuration

export EDITOR=vim
export LANG=en_US.UTF-8
export ANDROID_STUDIO=/opt/android-studio/bin
export PATH=$HOME/bin:/usr/local/bin:$HOME/.rbenv/bin:$ANDROID_STUDIO:$PATH

source $ZSH/oh-my-zsh.sh

alias l="ls -la"
alias be="bundle exec"

# screenfetch # it makes the new term slow

export NVM_DIR="/home/jeffhsta/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

