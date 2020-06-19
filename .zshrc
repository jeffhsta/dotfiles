# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git docker docker-compose gpg-agent)

# User configuration

export EDITOR=vim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export NODEJS_PATH="~/.asdf/installs/nodejs/13.8.0/.npm/bin"
export PATH="/usr/local/bin:$NODEJS_PATH:$PATH"

source ~/.secrets_env_vars

alias l="ls -la"
alias ssh-connections="sudo lsof -i -n | egrep '\<ssh\>'"
alias e="nvim"
alias dup="docker-compose up -d"
alias dps="docker ps"
alias dstop="docker-compose stop"
alias ddown="docker-compose down"
alias dkill="docker kill \`docker ps -q\`"
alias clear-branchs="g branch -D \`git branch | grep -v master | grep -v staging\`; git fetch -p"
alias aws-ebanx-dev="export AWS_ACCESS_KEY_ID=$EBANX_DEV_AWS_ACCESS_KEY_ID; export AWS_SECRET_ACCESS_KEY=$EBANX_DEV_AWS_SECRET_ACCESS_KEY"
alias aws-ebanx-prod="export AWS_ACCESS_KEY_ID=$EBANX_PROD_AWS_ACCESS_KEY_ID; export AWS_SECRET_ACCESS_KEY=$EBANX_PROD_AWS_SECRET_ACCESS_KEY"
alias aws-jeff="export AWS_ACCESS_KEY_ID=$JEFF_AWS_ACCESS_KEY_ID; export AWS_SECRET_ACCESS_KEY=$JEFF_AWS_SECRET_ACCESS_KEY"

source $ZSH/oh-my-zsh.sh
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
