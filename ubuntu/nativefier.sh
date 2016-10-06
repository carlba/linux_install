#!/bin/bash

source ../common/lib.sh

./nodejs.sh

current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir

! which nativefier && sudo npm install nativefier -g 

cd $current_dir

rm -rf $tmp_dir
