#!/bin/bash

sudo mount PARTUUID="" /home/PLACEHOLDER/Sync_backup
rsync -ac --delete --update /home/PLACEHOLDER/Sync/* /home/PLACEHOLDER/Sync/Sync_backup
chown -R PLACEHOLDER:PLACEHOLDER /home/PLACEHOLDER/Sync_backup
sudo umount /home/PLACEHOLDER/Sync_backup
rsync -ac --delete --update /home/PLACEHOLDER/Sync/* /docker/nc/data/backup/files
chown -R www-data:www-data /docker/nc/data/backup/files/
sh /home/PLACEHOLDER/database_update.sh backup
