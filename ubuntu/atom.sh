#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get -y install atom

# Depedency for atom package https://github.com/koalaman/shellcheck
sudo apt-get install shellcheck

cd ${current_dir}

rm -rf ${tmp_dir}
