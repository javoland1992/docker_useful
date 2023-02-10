#! /bin/bash
service mariadb start
chmod +x mariadb_config.sh 
./mariadb_config.sh
service mariadb restart
service mariadb status
tail -f /dev/null