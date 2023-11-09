#!/bin/bash

docker exec -d -u www-data nextcloud /var/www/html/occ files:scan -p "$1/files"
