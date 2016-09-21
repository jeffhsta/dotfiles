# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git python ruby rbenv virtualenv-prompt vim docker docker-compose gpg-agent)

# User configuration

export EDITOR=vim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=$HOME/bin:/usr/local/bin:$HOME/.rbenv/bin::$PATH


source $ZSH/oh-my-zsh.sh

alias l="ls -la"
alias be="bundle exec"
alias ssh-connections="sudo lsof -i -n | egrep '\<ssh\>'"

export NVM_DIR="/home/jeffhsta/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
