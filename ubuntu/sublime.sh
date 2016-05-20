#!/bin/bash

source ../common/lib.sh

sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get -y install sublime-text-installer
sudo ln -s /opt/sublime_text/sublime_text /usr/bin/sublime


if [[ -d "$HOME/Dropbox"  ]] ; then  
  mkdir -p ~/.config/sublime-text-3/Packages
  cd ~/.config/sublime-text-3/Packages/
  unlink User
  rm -r User
  ln -s ~/Dropbox/settings/Appdata/Sublime/User
else
  echo "Dropbox is not installed. Sublime settings will not be synced using Dropbox"
fi

pushd ~/.config/sublime-text-3/Installed\ Packages/
wget https://sublime.wbond.net/Package%20Control.sublime-package
popd


