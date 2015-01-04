#!/bin/bash

source ../common/lib.sh

sudo add-apt-repository -y ppa:gnome-terminator
sudo apt-get update
apt-get -y install terminator
