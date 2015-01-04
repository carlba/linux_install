#!/bin/bash

source ../common/lib.sh

virtualenvwrapper=$(cat <<END
#Setup virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/local/bin/virtualenvwrapper.sh
END
)

append_if_not_exist "$virtualenvwrapper" "$HOME/.bashrc" && echo -e "Appending to /etc/$HOME/.bashrc\n$virtualenvwrapper\n"
