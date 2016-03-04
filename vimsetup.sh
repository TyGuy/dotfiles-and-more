#!/bin/bash
# get yourself set up with vim plugins
# to start, you better git git and homebrew
echo 'installing Vim via Homebrew...'
brew install vim
echo 'moving system vim to /usr/bin/{vim,system_vim}'
sudo mv /usr/bin/vim /usr/bin/system_vim
echo 'vim installed!'

mkdir -p ~/.vim/bundle

#install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo '--------------------------------------------------'
echo 'Vundle installed!'
echo 'now open up your .vimrc, and run :PluginInstall'
echo 'Once you have done that, run you_complete_me.sh'
echo '--------------------------------------------------'
