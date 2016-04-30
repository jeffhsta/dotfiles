# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git python ruby virtualenv rbenv vim docker docker-compose gpg-agent)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$HOME/.rbenv/bin:$PATH
export EDITOR=vim
export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

alias l="ls -la"
alias be="bundle exec"

# It make the gpg-agent reload the private key session - problems with pinentry
alias gpg-tw="touch ~/tmp/gpg-bla && gpg -u 36277123 -s ~/tmp/gpg-bla && rm ~/tmp/gpg-bla*"
alias gpg-riseup="touch ~/tmp/gpg-bla && gpg -u C39C19AC -s ~/tmp/gpg-bla && rm ~/tmp/gpg-bla*"
alias gpg-gmail="touch ~/tmp/gpg-bla && gpg -u 6708DD88 -s ~/tmp/gpg-bla && rm ~/tmp/gpg-bla*"
alias gpg-pixteam="touch ~/tmp/gpg-bla && gpg -u D6497991 -s ~/tmp/gpg-bla && rm ~/tmp/gpg-bla*"

# screenfetch # it makes the new term slow

export NVM_DIR="/home/jeffhsta/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
