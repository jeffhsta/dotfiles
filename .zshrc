# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git python ruby rbenv virtualenv-prompt vim docker docker-compose gpg-agent)

# User configuration

export EDITOR=vim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="$HOME/.rbenv/shims:$HOME/.exenv/bin:/usr/local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"

alias l="ls -la"
alias be="bundle exec"
alias ssh-connections="sudo lsof -i -n | egrep '\<ssh\>'"
alias e="emacsclient -nw --alternate-editor="" -c "$@""
alias elm-format="elm-format-0.18"

. $NVM_DIR/nvm.sh
eval "$(exenv init -)"

source $ZSH/oh-my-zsh.sh
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
