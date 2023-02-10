# Changelog

## Keeping in head 

### How to.
#### Generate image
- docker build -t javoland1992/debian_mariadb_image:version1.0 .
#### Generate container by port 3306
- docker run -p 3306:3306 --name mariadb_container javoland1992/debian_mariadb_image:version1.0