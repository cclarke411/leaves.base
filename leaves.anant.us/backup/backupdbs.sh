#!/bin/bash

cd /home/azureuser/backup/data/current

docker exec -t wallabag_db_1 /usr/bin/mysqldump --add-drop-database --databases wallabag --single-transaction --compress --order-by-primary -u wallabag --password=wallapass > wallabag.sql


date +"%m/%d/%Y: %H:%S:%M" >> backup.log
