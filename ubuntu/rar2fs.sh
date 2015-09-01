#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir

# Get deps
sudo apt-get -qy install make libfuse-dev g++
 
# Get, make and install unrar
wget http://www.rarlab.com/rar/unrarsrc-5.1.1.tar.gz
tar zxvf unrarsrc-5.1.1.tar.gz
cd unrar
make && sudo make install
make lib && sudo make install-lib
cd ..
 
# Get, make and install rar2fs
wget https://googledrive.com/host/0B-2uEqYiZg3zR1F0b0tmRktiaXc -O rar2fs-1.20.0.tar.gz
tar zxvf rar2fs-1.20.0.tar.gz
cd rar2fs-1.20.0
./configure --with-unrar=../unrar --with-unrar-lib=/usr/lib/
make && sudo make install

cd $current_dir

rm -rf $tmp_dir
