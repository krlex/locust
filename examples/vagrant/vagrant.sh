#!/bin/bash
# NOTICE: 
#
# This file must be saved with unix-style line endings or it will fail.
# 

# Update and install some dependencies
sudo apt-get -y update 
sudo apt-get -y install build-essential python-is-python3 python-dev-is-python3 python3-pip python3-dev libev-dev libzmq3-dev supervisor
cd /vagrant

sudo pip install --use-mirrors pyzmq supervisor

# Checkout and install latest Locust from Github
sudo python setup.py develop

# Starting supervisor which is configured to start Locust
sudo supervisord -c examples/vagrant/supervisord.conf
