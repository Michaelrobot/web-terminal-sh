#!/bin/bash
sudo apt-get -y install cmake g++ pkg-config git vim-common libwebsockets-dev libjson-c-dev libssl-dev
git clone https://github.com/tsl0922/ttyd.git
cd ttyd && mkdir build && cd build
cmake ..
make
sudo make install
sudo cp ttyd.service /etc/systemd/system/ttyd.service
sudo systemctl daemon-reload
cd
