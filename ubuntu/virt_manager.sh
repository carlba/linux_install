#!/bin/bash

source ../common/lib.sh

sudo apt-get update
sudo apt-get -y install virt-manager
sudo usermod -a -G libvirtd cada
echo -e "\nA log-in/log-out is required to activate the permissions\n"
