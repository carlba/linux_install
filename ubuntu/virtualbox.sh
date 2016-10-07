#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

# Dependencies
sudo apt-get install dkms
sudo apt-get update
sudo apt-get install virtualbox

cd ${current_dir}

rm -rf ${tmp_dir}
