#!/bin/bash

sudo sed -i "s/Include /etc/ssh/sshd_config.d/*.conf/#Include /etc/ssh/sshd_config.d/*.conf/g" /etc/ssh/sshd_config
sudo echo -e "\nChallengeResponseAuthentication no" >> /etc/ssh/sshd_config
