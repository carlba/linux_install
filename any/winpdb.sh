#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir

wget https://winpdb.googlecode.com/files/winpdb-1.4.8.zip
unzip winpdb-1.4.8.zip
pip install -e winpdb-1.4.8

cd $current_dir

rm -rf $tmp_dir
