#!/bin/bash

set -ex


yes Y | sudo apt-get install libreadline-dev libreadline7 bison flex

git clone https://github.com/postgres/postgres.git

cd postgres
./configure
make
sudo make install
make clean
sudo adduser postgres
sudo mkdir /usr/local/pgsql/data
su - postgres

/usr/local/pgsql/bin/initdb -D /usr/local/pgsql/data
/usr/local/pgsql/bin/postgres -D /usr/local/pgsql/data >logfile 2>&1 &
/usr/local/pgsql/bin/createdb test
/usr/local/pgsql/bin/psql test
