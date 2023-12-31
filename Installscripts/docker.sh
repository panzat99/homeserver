#!/bin/bash

sudo apt install docker docker-compose --yes
sudo groupadd docker
sudo usermod -aG docker $1
sudo systemctl enable docker.service; sudo systemctl enable containerd.service; sudo systemctl start docker.service; sudo systemctl start containerd.service
git clone https://github.com/panzat99/docker.git
mv ./docker /home/$1/docker-server; mv /home/$1/docker-server/env /home/$1/docker-server/.env
chmod 600 /home/$1/docker-server/.env
newgrp docker
