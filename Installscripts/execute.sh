#!/bin/bash

sh ./Installscripts/snap_block.sh
sh ./Installscripts/homeserver_setup_crontab.sh $1
sh ./Installscripts/homeserver_setup_syncthing.sh $1
sh ./Installscripts/homeserver_setup_wireguard.sh $1
sh ./Installscripts/homeserver_setup_ufw.sh $1
sh ./Installscripts/homeserver_setup_docker.sh $1
