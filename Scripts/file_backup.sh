#!/bin/bash

sudo mount PARTUUID="" /mnt
rsync -ac --delete --update /home/PLACEHOLDER/Sync/* /mnt
chown -R PLACEHOLDER:PLACEHOLDER /mnt/*
sudo umount /mnt
rsync -ac --delete --update /home/PLACEHOLDER/Sync/* /docker/nc/data/backup/files
chown -R www-data:www-data /docker/nc/data/backup/files/
sh /home/PLACEHOLDER/Scripts/database_update.sh backup
