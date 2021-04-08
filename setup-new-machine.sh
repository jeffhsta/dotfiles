#! /bin/bash

sudo apt update && sudo apt upgrade

sudo apt install --yes \
xclip \
docker.io \
postgresql-client \
docker-compose \
openssh-server \
code \
gnome-tweaks \
git \
gpg \
tmux \
vim-gtk \
google-chrome-stable \
guvcview \
lutris \
zsh \
make \
build-essential \
libssl-dev \
zlib1g-dev \
libbz2-dev \
libreadline-dev \
libsqlite3-dev \
wget \
curl \
llvm \
libncurses5-dev \
xz-utils \
tk-dev \
libxml2-dev \
libxml2-utils \
libxmlsec1-dev \
libffi-dev \
liblzma-dev \
autoconf \
m4 \
libwxgtk3.0-gtk3-dev \
libgl1-mesa-dev \
libglu1-mesa-dev \
libpng-dev \
libssh-dev \
unixodbc-dev \
xsltproc \
fop \
libncurses-dev \
openjdk-11-jdk

# Install 1password client
sudo apt-key --keyring /usr/share/keyrings/1password.gpg adv --keyserver keyserver.ubuntu.com --recv-keys 3FEF9748469ADBE15DA7CA80AC2D62742012EA22
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password.gpg] https://downloads.1password.com/linux/debian edge main' | sudo tee /etc/apt/sources.list.d/1password.list

sudo apt install 1password

# flatpak install \
# Postman \
# Signal \
# Telegram \
# Slack \
# Spotify \
# Steam \
# Discord \
# Gimp \
# io.dbeaver.DBeaverCommunity \
# com.obsproject.Studio

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir -p ~/tmp/vim-swap

echo "To finish installing TMUX plugin open it and press <prefix> + I. To install VIM plugins open it and run :PluginInstall"

chsh -s /bin/zsh

zsh
source ~/.zshrc

asdf plugin-add erlang
asdf install erlang 23.2 && asdf global erlang 23.2

asdf plugin-add elixir
asdf install elixir 1.11 && asdf global elixir 1.11

asdf plugin-add python
asdf install python 3.9.2 && asdf global python 3.9.2

asdf plugin-add nodejs
asdf install 15.12.0 && asdf global nodejs 15.12.0
