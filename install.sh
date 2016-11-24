#!/bin/sh

RPI_INTERFACE_NAME=rpi0 #Raspberry pi interface name
EXTERNAL_INTERFACE_NAME=wlo1 #WAN interface name

sed -i s/rpi0/$RPI_INTERFACE_NAME/ 99-raspberrypi.rules rpi-iptables.service
sed -i s/wlo1/$EXTERNAL_INTERFACE_NAME/ rpi-iptables.service

cp 99-raspberrypi.rules /etc/udev/rules.d/
cp avahi-autoipd@.service rpi-iptables.service /etc/systemd/system/
