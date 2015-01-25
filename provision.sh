#!/usr/bin/env bash

# installs ansible
# http://docs.ansible.com/intro_installation.html#latest-releases-via-apt-ubuntu

sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install --assume-yes ansible
