# dotfiles
rm -rf ~/dotfiles
git clone https://github.com/drewboardman/dotfiles.git \
  ~/dotfiles
cat ~/dotfiles/fonts.sh
sh ~/dotfiles/install.sh

# Vim setup (seems to kill the script, so do it last)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
