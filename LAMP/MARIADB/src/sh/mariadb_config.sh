#! /bin/bash
if [ ! -v admin_user ] || [ -z "$admin_user" ] ; then
    admin_user="admin_mariadb"
fi
if [ ! -v admin_password ] || [ -z "$admin_password" ] ; then
    admin_password="admin_mariadb1234"
fi
echo "admin_user has the value: $admin_user"
echo "admin_password has the value: $admin_password"
mysql -e "CREATE USER '$admin_user'@'%' IDENTIFIED BY '$admin_password'"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$admin_user'@'%' WITH GRANT OPTION"
mysql -e "FLUSH PRIVILEGES"
sed -i -e 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf