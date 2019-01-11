#!/bin/bash

sudo apt-get install -y build-essential
sudo apt-get install -y checkinstall
sudo apt-get install -y libreadline-gplv2-dev
sudo apt-get install -y libncursesw5-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y libsqlite3-dev
sudo apt-get install -y tk-dev
sudo apt-get install -y libgdbm-dev
sudo apt-get install -y libc6-dev
sudo apt-get install -y libbz2-dev
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y openssl
sudo apt-get install -y libffi-dev
sudo apt-get install -y python3-dev
sudo apt-get install -y python3-setuptools
sudo apt-get install -y wget
sudo apt install python3-dev libpython3-dev
sudo apt-get install libmysqlclient-dev

# Prepare to build
mkdir /tmp/Python37
cd /tmp/Python37
# Pull down Python 3.7, build, and install
wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz
tar xvf Python-3.7.0.tar.xz
cd /tmp/Python37/Python-3.7.0
./configure --enable-optimizations
sudo make altinstall

update-alternatives --list python
sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.7 1
update-alternatives --list python

sudo pip3.7 install future six python-dateutil mysqlclient mmh3

sudo pip3.7 install black
