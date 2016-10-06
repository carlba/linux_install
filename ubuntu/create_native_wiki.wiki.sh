#!/bin/bash

source ../common/lib.sh

./nativefier.sh

current_dir=$PWD
tmp_dir=$(mktemp -d)

cd $tmp_dir

which nativefier && nativefier --name "Wiki.Wiki" https://github.com/carlba/wiki/wiki
sudo mv Wiki.Wiki-linux-x64 /opt/wiki.wiki
sudo ln -s /opt/wiki.wiki/Wiki.Wiki /usr/local/bin/wiki.wiki

cd $current_dir

rm -rf $tmp_dir
