#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

sudo add-apt-repository -f ppa:jtaylor/keepass
sudo apt-get update
sudo apt-get -y install keepass2

cd ${current_dir}

rm -rf ${tmp_dir}
