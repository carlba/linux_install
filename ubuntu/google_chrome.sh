#!/bin/bash

source ../common/lib.sh

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub |sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get -y update 
sudo apt-get -y install google-chrome-stable 
