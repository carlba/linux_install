#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}


sudo apt-add-repository -f ppa:arnaud-hartmann/glances-stable
sudo apt-get update
sudo apt-get -y install glances


cd ${current_dir}

rm -rf ${tmp_dir}
