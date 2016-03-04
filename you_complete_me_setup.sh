#!/bin/bash
# Prerequisites:
# 1. have Vundle installed
# 2. have the YouCompleteMe plugin in your .vimrc
# 3. run :PluginInstall from within Vim.

# Steps for YouCompleteMe Vim plugin. skip if you don't want this
echo "installing latest version of command line tools..."
xcode-select --install
echo "installing cmake..."
brew install cmake
echo "installing native things for YouCompleteMe plugin..."
echo "this could take a while (probably a few minutes)..."
this_dir=`pwd`
cd ~/.vim/bundle/YouCompleteMe
# if you don't need support for C-Family languages, do this:
# ./install.py
# if you need support for C-Family languages, do this:
./install.py --clang-completer
cd $this_dir
echo "Woo! we did it. Now, you can complete m"
