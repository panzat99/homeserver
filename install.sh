#!/bin/bash

# Terminal input the PARTUUIDs from the partitions in order for Sync, Sync_backup, /docker
#
# homeserver_setup_docker.sh needs to be executed last because newgrp subshell allows
# to start docker containers and let them run when the shell is terminated

name="$USER"

sudo apt install dos2unix --yes
dos2unix *.sh ./Scripts/*.sh ./Installscripts/*.sh
chmod 700 *.sh ./Scripts/*.sh ./Installscripts/*.sh
sudo sed -i "s/Include /etc/ssh/sshd_config.d/*.conf/#Include /etc/ssh/sshd_config.d/*.conf/g" /etc/ssh/sshd_config
mv Scripts /home/$name/Scripts
sh ./Installscripts/execute.sh
