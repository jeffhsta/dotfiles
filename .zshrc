# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git docker docker-compose gpg-agent kubectl)

# User configuration

export EDITOR="nvim"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="/usr/local/bin:/opt/homebrew/opt/libpq/bin:$NODEJS_PATH:$PATH"
export HELM_EXPERIMENTAL_OCI=1
export KERL_CONFIGURE_OPTIONS="--disable-jit --without-javac --with-ssl=$(brew --prefix openssl@1.1)"
# export KERL_CONFIGURE_OPTIONS="--disable-debug --disable-silent-rules --disable-jit --enable-dynamic-ssl-lib --enable-gettimeofday-as-os-system-time --enable-kernel-poll --without-javac --without-wx --without-odbc"

source $ZSH/oh-my-zsh.sh
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

source ~/.secrets_env_vars

# alias l="ls -la"
alias l="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias ssh-connections="sudo lsof -i -n | egrep '\<ssh\>'"
alias dup="docker-compose up -d"
alias dps="docker ps"
alias dstop="docker-compose stop"
alias ddown="docker-compose down"
alias dkill="docker kill \`docker ps -q\`"
alias dpr="doppler run -- "
alias clear-branchs="g branch -D \`git branch | grep -v master | grep -v main \`; git fetch -p"
