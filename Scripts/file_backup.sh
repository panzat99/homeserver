#!/bin/bash

sudo mount PARTUUID="" /mnt
rsync -ac --delete --update /home/PLACEHOLDER/Sync/* /mnt
chown -R PLACEHOLDER:PLACEHOLDER /mnt/* #Not really neccessary depending on filesystem. NTFS doesnt support this for example
sudo umount /mnt
