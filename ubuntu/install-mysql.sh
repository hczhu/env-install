#!/bin/bash

set -ex

git clone https://github.com/mysql/mysql-server.git
mkdir build && cd build
cmake ..
make
sudo make install
cd /usr/local/mysql
sudo mkdir mysql-files
sudo groupadd mysql
sudo useradd -r -g mysql -s /bin/false mysql
sudo chown mysql:mysql mysql-files

sudo bin/mysqld --initialize --user=mysql
sudo bin/mysql_ssl_rsa_setup

sudo cp support-files/mysql.server /etc/init.d/mysql.server


sudo /etc/init.d/mysql.server start
