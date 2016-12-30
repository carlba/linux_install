#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

sudo apt-get install libusb-1.0-0-dev
git clone https://github.com/carlba/g810-led.git
cd g810-led
make
sudo make install

cd ${current_dir}

rm -rf ${tmp_dir}
