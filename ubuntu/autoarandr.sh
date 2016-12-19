#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

git clone https://github.com/wertarbyte/autorandr.git
cp -r autorandr/autorandr $HOME/bin
sudo cp -r autorandr/bash_completion/autorandr /etc/bash_completion.d

cd ${current_dir}

rm -rf ${tmp_dir}
