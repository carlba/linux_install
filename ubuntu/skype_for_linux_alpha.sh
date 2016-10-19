#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

wget https://go.skype.com/skypeforlinux-64-alpha.deb
sudo dpkg -i skypeforlinux-64-alpha.deb

cd ${current_dir}

rm -rf ${tmp_dir}
