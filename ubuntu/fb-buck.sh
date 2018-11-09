#!/bin/bash

set -ex

sudo apt-get install inotify-tools ant

ppwd=$PWD
cd /tmp
git clone https://github.com/facebook/watchman.git
cd watchman
git checkout v4.9.0  # the latest stable release
./autogen.sh
./configure
make
sudo make install
cd ..
sudo rm -fr watchman

function installBuck() {
  cd /usr
  sudo git clone https://github.com/facebook/buck.git
  cd buck
  sudo ant
  sudo ./bin/buck build --show-output buck
  buck-out/gen/programs/buck.pex --help
  sudo ./bin/buck clean
}

installBuck

cd $ppwd

. buck.env
