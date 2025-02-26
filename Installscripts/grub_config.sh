#!/bin/bash

sudo sed -i "s/GRUB_CMDLINE_LINUX_DEFAULT=""/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash consoleblank=600"/g" /etc/default/grub
sudo update-grub
sudo reboot now
