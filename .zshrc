# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git vim docker docker-compose gpg-agent)

# User configuration

export EDITOR=vim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="/usr/local/bin:$PATH"

alias l="ls -la"
alias be="bundle exec"
alias ssh-connections="sudo lsof -i -n | egrep '\<ssh\>'"
alias e="emacsclient -nw --alternate-editor="" -c "$@""
alias elm-format="elm-format-0.18"
alias dup="docker-compose up -d"
alias dps="docker ps"
alias dstop="docker-compose stop"
alias ddown="docker-compose down"
alias dkill="docker kill \`docker ps -q\`"
alias clear-branchs="g branch -D \`git branch | grep -v master | grep -v staging\`; git fetch -p"

source $ZSH/oh-my-zsh.sh
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
