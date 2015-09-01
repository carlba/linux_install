#!/bin/bash

source ../common/lib.sh

curl -o- https://bootstrap.pypa.io/get-pip.py | sudo python

sudo pip install virtualenv

