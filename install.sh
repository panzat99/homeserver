#!/bin/bash

name="$USER"

sudo apt install dos2unix --yes
dos2unix ./Scripts/*.sh ./Installscripts/*.sh
chmod 700 ./Scripts/*.sh ./Installscripts/*.sh
mv Scripts /home/$name/Scripts
sudo apt remove --autoremove dos2unix --yes
sh ./Installscripts/_execute.sh $name
