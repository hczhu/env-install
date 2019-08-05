#!/bin/bash

F=go1.12.7.linux-amd64.tar.gz
wget https://dl.google.com/go/${F}
sudo tar -C /usr/local -xzf ${F}
