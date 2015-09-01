#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir

wget http://www.syntevo.com/downloads/smartgit/smartgit-6_5_9.deb
sudo dpkg --install smartgit-6_5_9.deb

[[ ! -f "/usr/bin/smartgit" ]] && sudo ln -s /usr/share/smartgit/bin/smartgit.sh /usr/bin/smartgit

cd $current_dir

rm -rf $tmp_dir
