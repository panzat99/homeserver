#!/bin/bash

sudo apt install ufw --yes
sudo systemctl enable ufw; sudo systemctl start ufw
sudo ufw enable
sudo ufw allow 22; sudo ufw allow 8384; sudo ufw allow 10001; sudo ufw allow 10002
