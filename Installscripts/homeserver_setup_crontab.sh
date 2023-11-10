#!/bin/bash

sed -i "s/PLACEHOLDER/$1/g" ./Additional_Files/cronjobs.txt
sed -i "s/PLACEHOLDER/$1/g" ./Scripts/file_backup.sh
sudo crontab ./Additional_Files/cronjobs.txt
