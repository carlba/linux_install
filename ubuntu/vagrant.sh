#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir
filename=vagrant_1.8.1_i686.deb
wget https://releases.hashicorp.com/vagrant/1.8.1/$filename
sudo dpkg -i $filename
vagrant plugin install vagrant-vbox-snapshot
vagrant plugin install vagrant-hostmanager 
cd $current_dir

rm -rf $tmp_dir
