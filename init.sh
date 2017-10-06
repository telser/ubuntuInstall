sudo apt-get -y update
sudo apt-get -y upgrade

# install packages
wget -O - http://github.ove.local/raw/SellerTools/ubuntu-workstation/master/install.sh | sudo bash

# setup user
sudo chsh -s /usr/bin/zsh drew
sudo usermod -a -G audio,video,netdev drew

mkdir -p ~/Downloads
mkdir -p ~/tmp

rm -fr ~/.rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git \
    ~/.rbenv/plugins/ruby-build

# Install dbeaver
cd ~
curl -L http://dbeaver.jkiss.org/files/dbeaver-ce_latest_amd64.deb > ~/Downloads/dbeaver.deb
sudo dpkg -i ~/Downloads/dbeaver.deb
