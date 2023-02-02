# Changelog

## Keeping in head 

### Here some important information and Dockerfile instructions equivalence.
#### DEFAULT ENTRYPOINT /bin/sh -c
- CMD ["service apache2 start"] <==> /bin/sh -c "service apache2 start" 
- CMD ["/bin/date"] <==> /bin/sh -c /bin/date
- CMD ["/bin/sleep 5"] <==> /bin/sh -c "/bin/sleep 5"
- CMD ["sleep", "5"] <==> /bin/sh -c /bin/sleep \ 5
- ENTRYPOINT echo "Hello World" <==> echo "Hello World" 
- ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"] <==> /usr/sbin/apache2ctl
- ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"] <==> /usr/sbin/apache2ctl -D FOREGROUND

#### Real example
ENV PATH "$PATH:/usr/games" 
CMD ["Yo, CMD!!"]
ENTRYPOINT ["cowsay", "Yo, Entrypoint!!"]
<=======================================>
compgen -c | grep cowsay
export PATH="$PATH:/usr/games"
cowsay "Yo, Entrypoint!!" \ "Yo, CMD!!"

### How to.
#### Generate image
- docker build -t javoland1992/debian_apache_image .
#### Generate container by port 80
- docker run -p 80:80 --name apache_container javoland1992/debian_apache_image
#### Validate operation
http://127.0.0.1/
<p align="center">
  <img src=".\src\img\apache.png" alt="Docker validation for Apache service by browser"/>
</p>