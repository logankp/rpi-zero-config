# rpi-zero-config
Contains files to make usb network configuration easier on the Raspberry Pi Zero

## Requirements
* systemd
* avahi-autoipd
* avahi-daemon

## Installation
Edit the install.sh file and change the following variables:

RPI_INTERFACE_NAME: What you want the network interface name of the Pi to be called.
EXTERNAL_INTERFACE_NAME: WAN network interface name for NAT.

Run install.sh as root.

## List of files
99-raspberrypi.rules: A Udev file to recognize the Raspberry Pi, give it a nice network interface name, configure IPTables rules, and setup Avahi

rpi-iptables.service: A systemd service to set-up NAT

avahi-autoipd@.service: A systemd service to configure a link-local ip address for discovering the Pi
