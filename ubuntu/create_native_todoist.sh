#!/bin/bash

source ../common/lib.sh

./nativefier.sh

current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

which nativefier && nativefier --name "Todoist" http://www.todoist.com
sudo mv Todoist-linux-x64 /opt/todoist
sudo ln -s /opt/todoist/Todoist /usr/local/bin/todoist

cd ${current_dir}

rm -rf ${tmp_dir}
