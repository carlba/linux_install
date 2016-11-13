#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

sudo add-apt-repository -f ppa:no1wantdthisname/ppa
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install fontconfig-infinality

cd ${current_dir}

rm -rf ${tmp_dir}
