#!/bin/bash

function instr_file {
    local needle="$1"
    local file="$2"
    return $(grep -q "$needle" "$file")
}

function append_if_not_exist {
    local str="$1"
    local file="$2"
    if ! instr_file "$str" "$file";then
        echo "$str" | sudo tee -a "$file" > /dev/null
        return 0
    else
        return 1
    fi
}