#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)


cd $tmp_dir

cleanup
sudo apt-get -y install tmux

[[ ! -d ~/.tmux/plugins/tpm ]] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

[[ ! -L ~/.tmux.conf ]] && curl https://raw.githubusercontent.com/carlba/linuxconf/master/.tmux.conf -Os -o ~/.tmux.conf

cd $current_dir

rm -rf $tmp_dir
