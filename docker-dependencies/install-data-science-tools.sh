#!/bin/sh

sudo apt-get update -y && sudo apt-get -y upgrade

wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh

echo $(sha256sum Anaconda3-2019.03-Linux-x86_64.sh)
sudo chmod +x Anaconda3-2019.03-Linux-x86_64.sh

bash "./Anaconda3-2019.03-Linux-x86_64.sh"

source ~/.bashrc
