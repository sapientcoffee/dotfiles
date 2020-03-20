#!/usr/bin/env bash

if [ -f /etc/debian_version ]; then
    echo "Detected a Debian based system"
    sudo apt update
    sudo apt -y upgrade
    sudo apt -y install docker jq  

else
    echo "Did not detect a know Linux OS - it might be Linux just never setup for it"

fi