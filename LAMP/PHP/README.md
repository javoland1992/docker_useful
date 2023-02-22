# Changelog

## Keeping in head 

### How to.
#### Generate image
- docker build -t javoland1992/debian_php_image .
#### Generate container by port 80
- docker run -p 80:80 --name php_container javoland1992/debian_php_image
#### Validate operation
http://127.0.0.1/
<p align="center">
  <img src=".\src\img\php.png" alt="Docker validation for PHP service by browser"/>
</p>

#### Generate container by port 80 and using a docker network connecting to another container (MARIADB)

```bash
docker network create tulip-net
docker build -t javoland1992/debian_php_image:version2.0 .
docker run -p 80:80 --net tulip-net --name php_container javoland1992/debian_php_image:version2.0
```

#### Validate connections between servers in the same network (tulip-net)
<p align="center">
  <img src=".\src\img\php_mariadb.png" alt="Docker validation connecting to another container"/>
</p>