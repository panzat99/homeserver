#!/bin/bash

sed -i "s/PLACEHOLDER/$1/g" crontabjobs_sudo.txt
sudo crontab ./Additional_Files/cronjobs.txt
