#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir

sudo add-apt-repository ppa:mystic-mirage/pycharm
sudo apt-get update
sudo apt-get -y install pycharm

cd $current_dir

rm -rf $tmp_dir
