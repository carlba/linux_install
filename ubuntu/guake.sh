#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

sudo apt-get -y install guake

cd ${current_dir}

rm -rf ${tmp_dir}
