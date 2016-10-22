#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

version='7.07'

sudo apt-get -y install zlib1g-dev libxml2-dev openssl libssl-dev pkg-config vpnc openconnect

sudo wget -O /etc/vpnc/vpnc-script \
"http://git.infradead.org/users/dwmw2/vpnc-scripts.git/blob_plain/HEAD:/vpnc-script"

sudo chmod +x /etc/vpnc/vpnc-script
sudo chmod o+r /etc/vpnc/vpnc-script

cd ${current_dir}

sudo rm -rf ${tmp_dir}
