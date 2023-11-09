#!/bin/bash

#Works on ubuntu server as there are not many snaps installed. Remove other snaps in work
#Remove snap packages in order of importance: Regular programs first and then the core components

sudo snap remove --purge lxd
sudo snap remove --purge core20
sudo snap remove --purge snapd
sudo apt remove --autoremove snpad
#Above lines tested with Ubuntu Server 22.04.3 LTS
touch nosnap.pref
sudo echo "Package: snapd
Pin: release a=*
Pin-Priority: -10" > nosnap.pref
sudo mv nosnap.pref /etc/apt/preferences.d/
sudo apt update
