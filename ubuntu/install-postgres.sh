#!/bin/bash

set -ex


yes Y | sudo apt-get install libreadline-dev libreadline7 bison flex

git clone https://github.com/postgres/postgres.git

cd postgres
./configure
make
sudo make install
