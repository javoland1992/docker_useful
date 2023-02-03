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