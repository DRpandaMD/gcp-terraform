#!/bin/bash

# update and upgrade packages
sudo apt update
sudo apt upgrade -y
# install docker 
sudo apt install -y docker.io
# set the group for docker if it has not been done
sudo groupadd docker
# add the user to the group (you will have to run this anyway)
sudo usermod -aG docker $USER