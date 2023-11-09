#!/bin/bash

sed -i "s/PLACEHOLDER/$1/g" cronjobs.txt
sudo crontab ./Additional_Files/cronjobs.txt
