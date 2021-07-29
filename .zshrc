# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git docker docker-compose gpg-agent kubectl)

# User configuration

export EDITOR="code -w"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export NODEJS_PATH="~/.asdf/installs/nodejs/13.8.0/.npm/bin"
export PATH="/usr/local/bin:$NODEJS_PATH:$PATH"
export HELM_EXPERIMENTAL_OCI=1

source ~/.secrets_env_vars

alias l="ls -la"
alias ssh-connections="sudo lsof -i -n | egrep '\<ssh\>'"
alias dup="docker-compose up -d"
alias dps="docker ps"
alias dstop="docker-compose stop"
alias ddown="docker-compose down"
alias dkill="docker kill \`docker ps -q\`"
alias clear-branchs="g branch -D \`git branch | grep -v master | grep -v main \`; git fetch -p"
alias aws-jeff="export AWS_ACCESS_KEY_ID=$JEFF_AWS_ACCESS_KEY_ID; export AWS_SECRET_ACCESS_KEY=$JEFF_AWS_SECRET_ACCESS_KEY"
alias aws-sb="export AWS_MFA_ARN=$SB_AWS_MFA_ARN; export AWS_REGION=$SB_AWS_REGION; export AWS_DEFAULT_REGION=$SB_AWS_REGION"
alias aws-january="export AWS_ACCESS_KEY_ID=$JANUARY_AWS_ACCESS_KEY_ID; export AWS_SECRET_ACCESS_KEY=$JANUARY_AWS_SECRET_ACCESS_KEY"
alias pbcopy="xclip -selection clipboard" # For Linux machines

aws_mfa ()
 {
    CREDENTIALS=$(aws sts get-session-token --duration-seconds 129600 --serial-number $AWS_MFA_ARN --token-code $1)
    export AWS_ACCESS_KEY_ID=$(echo $CREDENTIALS | jq -r '.Credentials.AccessKeyId')
    export AWS_SECRET_ACCESS_KEY=$(echo $CREDENTIALS | jq -r '.Credentials.SecretAccessKey')
    export AWS_SESSION_TOKEN=$(echo $CREDENTIALS | jq -r '.Credentials.SessionToken')

    echo "AWS Session Token expires at $(echo $CREDENTIALS | jq '.Credentials.Expiration')"
  }

source $ZSH/oh-my-zsh.sh
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
