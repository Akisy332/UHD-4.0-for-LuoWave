#!/bin/bash
sudo apt-get install autoconf automake build-essential ccache cmake cpufrequtils doxygen ethtool \
g++ git inetutils-tools libboost-all-dev libncurses5 libncurses5-dev libusb-1.0-0 libusb-1.0-0-dev \
libusb-dev python3-dev python3-mako python3-numpy python3-requests python3-scipy python3-setuptools \
python3-ruamel.yaml 
sudo ldconfig
cd host
mkdir build
cd build
sudo cmake ../
sudo make -j4
sudo make test
sudo make install
sudo ldconfig
sudo 

sudo uhd_images_downloader
cd ../images
sudo cp usrp_b205mini_75t_fpga.bin /usr/local/share/uhd/images
sudo cp usrp_b205mini_100t_fpga.bin /usr/local/share/uhd/images
sudo cp usrp_b205mini_200t_fpga.bin /usr/local/share/uhd/images
sudo cp usrp_b205mini_plus_fpga.bin /usr/local/share/uhd/images
sudo cp usrp_b210_100t_fpga.bin /usr/local/share/uhd/images
sudo cp usrp_b210_plus_fpga.bin /usr/local/share/uhd/images

sudo uhd_find_devices
