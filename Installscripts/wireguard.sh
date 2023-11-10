#!/bin/bash

#Setup wireguard and enable ip forwarding
sudo apt install wireguard --yes
sudo sed -i "s/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g" /etc/sysctl.conf
wg genkey | sudo tee privatekey | wg pubkey | sudo tee pubkey
sudo mv pubkey /etc/wireguard/pubkey; sudo mv privatekey /etc/wireguard/privatekey; sudo mv ./Additional_Files/wireguard_template.txt /etc/wireguard/wg0.conf
sudo chmod 600 /etc/wireguard/pubkey; sudo chmod 600 /etc/wireguard/privatekey
sudo systemctl enable wg-quick@wg0.service; sudo systemctl start wg-quick@wg0.service
# Edit wg0.conf with set parameters
# Start wireguard: wg-quick up wg0
# On server: 
# 1. wg-quick down wg0
# 2. Delete old peer from config file
# 3. wg-quick up wg0
# 4. add peer wg set wg0 peer <pubkey_peer> allowed-ips <internal_ip_peer>
