#!/bin/bash

source ../common/lib.sh

./infinality.sh

sudo apt-get update
sudo apt-get -y install man htop curl usbmount fonts-inconsolata
