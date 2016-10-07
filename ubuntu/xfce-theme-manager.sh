#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

sudo add-apt-repository -y ppa:rebuntu16/other-stuff
sudo apt-get update
sudo apt-get install xfce-theme-manager
cd ${current_dir}

rm -rf ${tmp_dir}
