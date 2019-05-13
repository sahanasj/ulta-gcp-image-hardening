#!/bin/bash -e
sudo apt-get update 
sudo apt-get install -y python-opencv 
sudo apt install -y nginx 
sudo apt-get install -y unicorn
sudo apt-get install -y curl gnupg build-essential
sudo apt-get install -y python-pip python-dev
sudo apt-get install -y software-properties-common

# Ruby and Rails Packages
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt update
sudo apt install -y rvm
source /etc/profile.d/rvm.sh
rvmsudo rvm fix-permissions
rvmsudo rvm install 2.2.2
rvmsudo rvm install 2.5.3
sudo gem install rails -v 4.1.0
