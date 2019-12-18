#!/bin/bash

cd /home/azureuser/backup/data/current
#docker exec -t ttrssdb pg_dumpall -c -U postgres > ttrss.sql
#docker exec -t wallabag_db_1 /usr/bin/mysqldump -u wallabag --password=wallapass wallabag > wallabag.sql
docker exec -t wallabag_db_1 /usr/bin/mysqldump --add-drop-database --databases wallabag --single-transaction --compress --order-by-primary -u wallabag --password=wallapass > wallabag.sql

cat wallabag.sql | mysql --host=delta-data-archive.cgwvtuqjdjrx.us-east-1.rds.amazonaws.com --port=3306 -u anantroot -pY43oK81ARc8dzC8gzd4I0Nwcy7Fr 

date +"%m/%d/%Y: %H:%S:%M" >> backup.log
