#!/bin/bash

source ../common/lib.sh

sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get -y install sublime-text-installer
sudo ln -s /opt/sublime_text/sublime_text /usr/bin/sublime

mkdir -p ~/.config/sublime-text-3/Packages
cd ~/.config/sublime-text-3/Packages/
rm -r User
ln -s ~/Dropbox/settings/Appdata/Sublime/User
