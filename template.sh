#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir

sudo add-apt-repository -f ppa:template                                                                                                                                                                                                                                                                   
sudo apt-get update                                                                                                                                                                                                                                                                                                
sudo apt-get -y install template

cd $current_dir

rm -rf $tmp_dir
