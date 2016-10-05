#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)
file_name=smartgit-8_0_1.deb
cd $tmp_dir

wget http://www.syntevo.com/static/smart/download/smartgit/$file_name
sudo dpkg --install $file_name

[[ ! -f "/usr/bin/smartgit" ]] && sudo ln -s /usr/share/smartgit/bin/smartgit.sh /usr/bin/smartgit

cd $current_dir

rm -rf $tmp_dir
