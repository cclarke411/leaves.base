#!/bin/bash

cd /home/azureuser/backup/data/current

cat wallabag.sql | mysql --host=delta-data-archive.cgwvtuqjdjrx.us-east-1.rds.amazonaws.com --port=3306 -u anantroot -pY43oK81ARc8dzC8gzd4I0Nwcy7Fr 

cat wallabag.sql | mysql --host=leaves-db1-use1.mariadb.database.azure.com --port=3306 -u leaves@leaves-db1-use1 -pLeadpr3s\;Graph

date +"%m/%d/%Y: %H:%S:%M" >> restore.log
