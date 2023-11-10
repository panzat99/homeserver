#!/bin/bash

sh ./Installscripts/ssh_config.sh
sh ./Installscripts/snap_block.sh
sh ./Installscripts/crontab.sh $1
sh ./Installscripts/syncthing.sh $1
sh ./Installscripts/wireguard.sh $1
sh ./Installscripts/ufw.sh $1
sh ./Installscripts/docker.sh $1
