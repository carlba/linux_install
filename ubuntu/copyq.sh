#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir

wget "https://github.com/hluk/CopyQ/releases/download/v2.7.1/copyq_2.7.1_Debian_7.0_amd64.deb"
sudo dpkg -i copyq_2.7.1_Debian_7.0_amd64.deb

cd $current_dir

rm -rf $tmp_dir
