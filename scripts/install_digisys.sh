#!/bin/bash
#
# Installs digisys stuff as per
# https://spivey.oriel.ox.ac.uk/corner/Installing_the_micro:bit_toolchain_
# (Digital_Systems)
#
# Run as ROOT.

# check for root
./check_root.sh root || exit 1

# install packages
apt-get install -y gcc-arm-none-eabi libnewlib-arm-none-eabi srecord mercurial \
    minicom gcc-arm-linux-gnueabihf
pip3 install --pre -U pyocd

# enable access to microbit
echo \"ACTION==\"add\", SUBSYSTEMS==\"usb\", ATTRS{idVendor}==\"0d28\", ATTRS{idProduct}==\"0204\", MODE=\"660\", GROUP=\"plugdev\"\" > \
    /etc/udev/rules.d/50-mbed.rules
usermod -a -G plugdev $USER # add current user to plugdev group

# remove modem manager
apt-get purge -y --auto-remove modemmanager