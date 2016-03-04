#!/bin/bash
# this uses wget. If you don't have that, run: brew install wget
# super thanks to Ethan Schwatever for creating solarized, and
# whoever altercation is for hosting on Github.
# https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized
solarized_dir="${HOME}/iterm/solarized"
mkdir -p $solarized_dir

cd $solarized_dir

wget https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Light.itermcolors
wget https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors

echo 'Nice, you downloaded some color themes!'
echo "If you're not using iTerm yet, get on it! => https://www.iterm2.com/"
echo "From iTerm, go to preferences => profiles => colors => import."
echo "go to the downloaded directory (${solarized_dir}), and then choose the scheme you want."
echo "Then you're pretty good to go!"
