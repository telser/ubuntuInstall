#! /bin/bash

# Make sure system up to date
sudo apt-get -y update
sudo apt-get -y upgrade

# install packages
/bin/bash packages.sh

# setup user
USER=`whoami`
sudo chsh -s /usr/bin/zsh $USER
sudo usermod -a -G audio,video,netdev $USER

# This disables the need to enter password for sudo'ing
echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR='tee -a' visudo

# I like having this
mkdir -p ~/tmp

# Install rbenv
rm -fr ~/.rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git \
    ~/.rbenv/plugins/ruby-build

# symlink all dotfiles
/bin/bash dotfiles_apply.sh
