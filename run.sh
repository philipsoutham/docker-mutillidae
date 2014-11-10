#/bin/sh

/bin/sed -i -e "s/localhost/$MYSQL_PORT_3306_TCP_ADDR/g" /var/www/html/mutillidae/classes/MySQLHandler.php
/bin/sed -i -e "s/allow_url_include = Off/allow_url_include = On/g" /etc/php5/apache2/php.ini
/usr/sbin/apache2ctl -D FOREGROUND
