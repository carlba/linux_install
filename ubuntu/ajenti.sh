#!/bin/bash

source ../common/lib.sh

sudo sh -c "echo 'deb http://repo.ajenti.org/debian main main' >> /etc/apt/sources.list"
wget http://repo.ajenti.org/debian/key -O- | sudo apt-key add -
sudo apt-get update
apt-get -y install ajenti
