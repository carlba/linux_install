#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir

! which npm && curl -sL https://deb.nodesource.com/setup_6.x && sudo -E bash - && sudo apt-get install -y nodejs

cd $current_dir

rm -rf $tmp_dir
