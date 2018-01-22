# clone dotfiles
rm -rf ~/dotfiles
git clone -b laptop https://github.com/drewboardman/dotfiles.git \
  ~/dotfiles

# install oh-my-zsh before you symlink zshrc
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
rm ~/.zshrc

# Get adobe source code pro
sh ~/dotfiles/fonts.sh

#install dotfiles
sh ~/dotfiles/install.sh

# Vim colorscheme
cd ~/.vim
mkdir colors
cd colors
wget https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark-256.vim

# Vim setup (seems to kill the script, so do it last)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
