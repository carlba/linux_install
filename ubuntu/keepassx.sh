#!/bin/bash

source ../common/lib.sh

sudo add-apt-repository -y ppa:keepassx/daily
sudo apt-get update
apt-get -y install keepassx
