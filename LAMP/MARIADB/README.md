# Changelog
## Keeping in head
### How to.
#### Generate image
```bash
docker build -t javoland1992/debian_mariadb_image:version1.0 .
```
#### Generate container by port 3306
```bash
docker run -p 3306:3306 --name mariadb_container javoland1992/debian_mariadb_image:version1.0
```
#### Generate container by port 3306, it use a docker network to link multiples containers
- docker network named tulip-net
```bash
docker network create tulip-net
docker build -t javoland1992/debian_mariadb_image:version2.0 .
docker run -p 3306:3306 --net tulip-net --name mariadb_container javoland1992/debian_mariadb_image:version2.0
```
#### mariadb_config bash validate and use some enviroment variables defined in MARIADB's Dockerfile to build a container. You can connect from physical computer or any container inside tulip-net
##### Summarizing the steps that are necessary to configuring MARIADB to connect from anywhere
```bash
docker exec -it mariadb_container bash
mysql -u root -p
CREATE USER 'pma'@'%' IDENTIFIED BY 'pma1234';
GRANT ALL PRIVILEGES ON *.* TO 'pma'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```
*Look for "bind-address" option inside /etc/mysql/mariadb.conf.d/50-server.cnf, then Replace 127.0.0.1 to 0.0.0.0, you can replace with host or ip (it will depend on your necessities)* 
```bash
service mariadb restart
```
#### TODO Validate operation with mariadb_config bash and enviroment variables defined in MARIADB's Dockerfile connecting from php