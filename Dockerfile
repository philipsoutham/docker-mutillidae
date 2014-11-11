FROM ubuntu:trusty
MAINTAINER Philip Southam <philip@eml.cc>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update\
  && apt-get install --assume-yes apache2 apache2-utils libapache2-mod-auth-mysql php5-mysql php5 php-pear php5-gd php5-mcrypt php5-curl unzip\
  && echo "<IfModule mod_dir.c>\nDirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm3\n</IfModule>" > /etc/apache2/mods-enabled/dir.conf\
  && echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php

COPY ./mutillidae-2.6.16.zip /tmp/mutillidae-2.6.16.zip
RUN cd /var/www/html && unzip /tmp/mutillidae-2.6.16.zip

COPY ./run.sh /run.sh

EXPOSE 80
CMD ["/bin/sh", "/run.sh"]
