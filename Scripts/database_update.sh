#!/bin/bash

rsync -ac --delete --update /home/hs/Sync/* /docker/nc/data/"$1"/files
chown -R www-data:www-data /docker/nc/data/"$1"/files/ # Neccessary to interact with files e.g. move, delete, ...
docker exec -d -u www-data nextcloud /var/www/html/occ files:scan -p "$1/files" # Core command to update the database from locally moved files
