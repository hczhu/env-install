#/bin/bash

set -ex

sudo apt-get install ctags
sudo apt-get install clang-format
sudo apt-get install clang
sudo apt-get upgrade g++
sudo apt-get install octave
sudo apt-get install\
    g++\
    automake\
    autoconf\
    autoconf-archive\
    libtool\
    libboost-all-dev\
    libevent-dev\
    libdouble-conversion-dev\
    libgoogle-glog-dev\
    libgflags-dev\
    liblz4-dev\
    liblzma-dev\
    libsnappy-dev\
    make\
    zlib1g-dev\
    binutils-dev\
    libjemalloc-dev\
    libssl-dev\
    pkg-config
sudo apt-get install     libiberty-dev
# sudo apt-get install hg
# sudo apt-get install Mercurial
# sudo apt-get upgrade pip3
# sudo apt-get upgrade pip3.4

sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-8 g++-8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 10


sudo apt-get install openjdk-8-jdk
# sudo add-apt-repository ppa:webupd8team/java
# sudo apt-get update && sudo apt-get install oracle-java8-installer
# echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
# curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -
# sudo apt-get update && sudo apt-get install bazel && sudo apt-get upgrade bazel
sudo apt-get install cmake

curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.8.1/ripgrep_0.8.1_amd64.deb && sudo dpkg -i ripgrep_0.8.1_amd64.deb

curl -LO https://raw.githubusercontent.com/llvm-mirror/clang/master/tools/clang-format/clang-format.py && \
  sudo cp -f clang-format.py /usr/local/bin/

sudo apt-get install nodejs npm
npm install google-spreadsheet

# sudo pip3 install PyMySQL

sudo apt-get install \
    libncurses-dev \
    libsodium-dev \
    libboost-all-dev \
    libevent-dev \
    libdouble-conversion-dev \
    libgoogle-glog-dev \
    libgflags-dev \
    libiberty-dev \
    liblz4-dev \
    liblzma-dev \
    libsnappy-dev \
    zlib1g-dev \
    binutils-dev \
    libjemalloc-dev \
    libssl-dev \
    pkg-config \
    bison \
    flex \
    libboost-all-dev \
    libunwind8-dev \
    libelf-dev \
    libdwarf-dev
