#!/usr/bin/env bash

# installs ansible
# http://docs.ansible.com/intro_installation.html#latest-releases-via-apt-ubuntu

if [ ! -f ~/.ansible_installed ]; then
    sudo apt-get update
    sudo apt-get install software-properties-common
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get install --assume-yes ansible

    touch ~/.ansible_installed
fi
