# dotfiles
rm -rf ~/dotfiles
git clone -b laptop https://github.com/drewboardman/dotfiles.git \
  ~/dotfiles
sh ~/dotfiles/fonts.sh
sh ~/dotfiles/install.sh

# Vim setup (seems to kill the script, so do it last)
cd ~/.vim
mkdir colors
cd colors
wget https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark-256.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
