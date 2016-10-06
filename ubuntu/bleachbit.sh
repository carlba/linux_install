#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir


sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo apt-get -y clean

sudo apt-get -y install bleachbit

cd $current_dir

rm -rf $tmp_dir
