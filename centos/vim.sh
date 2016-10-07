#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

yum install -y vim-enhanced
cp ${current_dir}/vim.tar.gz .
cd ~
tar -xzvf ${tmp_dir}/vim.tar.gz

cd ${current_dir}

rm -rf ${tmp_dir}
