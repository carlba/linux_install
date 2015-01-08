#!/bin/bash

source ../common/lib.sh

curl -o- https://bootstrap.pypa.io/get-pip.py | python

sudo pip install virtualenv

