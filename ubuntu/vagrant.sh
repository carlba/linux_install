#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
sudo dpkg -i vagrant_1.7.2_x86_64.deb
vagrant plugin install vagrant-vbox-snapshot
vagrant plugin install vagrant-hostmanager 
cd $current_dir

rm -rf $tmp_dir
