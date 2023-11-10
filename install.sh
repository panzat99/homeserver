#!/bin/bash

# Terminal input the PARTUUIDs from the partitions in order for Sync, Sync_backup, /docker
#
# homeserver_setup_docker.sh needs to be executed last because newgrp subshell allows
# to start docker containers and let them run when the shell is terminated

name="$USER"

sudo apt install dos2unix --yes
dos2unix ./Scripts/*.sh ./Installscripts/*.sh
chmod 700 ./Scripts/*.sh ./Installscripts/*.sh
mv Scripts /home/$name/Scripts
sudo apt remove --autoremove dos2unix --yes
sh ./Installscripts/_execute.sh $name
