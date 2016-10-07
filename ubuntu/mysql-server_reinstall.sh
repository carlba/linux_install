#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

sudo apt-get purge mysql-server mysql-client mysql-common mysql-server-core-5.7
mysql-client-core-5.7
sudo rm -rf /etc/mysql /var/lib/mysql
sudo apt-get autoremove
sudo apt-get autoclean

sudo apt update
sudo apt-get install mysql-server mysql-client --fix-broken

cd ${current_dir}

rm -rf ${tmp_dir}
