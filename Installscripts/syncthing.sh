#!/bin/bash

sudo curl -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt update && sudo apt upgrade --yes
sudo apt install syncthing --yes
syncthing generate
sed -i "s/127.0.0.1:8384/0.0.0.0:8384/g" /home/$1/.config/syncthing/config.xml
sudo systemctl enable syncthing@$1.service; sudo systemctl start syncthing@$1.service
