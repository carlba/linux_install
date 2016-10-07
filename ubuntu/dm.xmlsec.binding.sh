#!/bin/bash

source ../common/lib.sh
current_dir=$PWD
tmp_dir=$(mktemp -d)

cd ${tmp_dir}

sudo apt-get install libxmlsec1-dev swig
virtualenv test_venv
source test_venv/bin/activate
pip install dm.xmlsec.binding
deactivate
rm -rf test_venv

cd ${current_dir}

rm -rf ${tmp_dir}
