#!/bin/bash

source ../common/lib.sh

sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get -y install sublime-text-installer
[[ ! -L "/usr/bin/sublime" ]] && sudo ln -s /opt/sublime_text/sublime_text /usr/bin/sublime


if [[ -d "$HOME/Dropbox"  ]] ; then  
  if [[ -d "$HOME/.config/sublime-text-3/Packages" ]]; then
    cd ~/.config/sublime-text-3/Packages/
    [[ -L User ]] && unlink User
    [[ -d User ]] && rm -r User
  else
    mkdir -p "$HOME/.config/sublime-text-3/Packages"
  fi
  cd "$HOME/.config/sublime-text-3/Packages"
  ln -s ~/Dropbox/settings/Appdata/Sublime/User .
else
  echo "Dropbox is not installed. Sublime settings will not be synced using Dropbox"
fi

pushd ~/.config/sublime-text-3/Installed\ Packages/ > /dev/null

[[ ! -f Package\ Control.sublime-package ]] && wget --no-check-certificate https://sublime.wbond.net/Package%20Control.sublime-package

 
popd > /dev/null

pushd /home/cada/.config/sublime-text-3/Packages > /dev/null
git clone -b fix-mdprev-incompat https://github.com/bordaigorl/sublime-evernote
popd > /dev/null
