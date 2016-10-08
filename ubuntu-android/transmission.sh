#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

sudo add-apt-repository -f ppa:transmissionbt/ppa
sudo apt-get update
sudo apt-get -y install transmission-daemon

#Configure user running tranmission to have network access
sudo usermod -a -G aid_inet debian-transmission

mkdir -p $HOME/Downloads/transmission

sudo systemctl enable transmission-daemon

echo 'Please update /etc/transmission/settings.json with the correct download folder'




cd ${current_dir}

rm -rf ${tmp_dir}
