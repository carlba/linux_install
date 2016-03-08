#!/bin/bash

source ../common/lib.sh

cd ~/dev

git clone git@github.com:carlba/warp.git
git clone git@github.com:carlba/tarsync.git

cd warp
sudo pip install -e .

cd ../tarsync
sudo pip install -e ·


