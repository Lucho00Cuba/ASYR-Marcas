# Steps install Dolibarr in Linux (Debian)

## Optionals

```shell
root@dolibarr:~# apt install vim net-tools curl -y
```

## PHP

```shell
root@dolibarr:~# apt install -y php php-cli php-mysql php-common php-zip php-mbstring php-xmlrpc php-curl php-soap php-gd php-xml php-intl php-ldap libapache2-mod-php -y

root@dolibarr:~# vim /etc/php/*/apache2/php.ini
....
date.timezone = Europe/Madrid
memory_limit = 256M
upload_max_filesize = 64M
display_errors = On
log_errors = Off
```

	
## MYSQL
```shell
root@dolibarr:~# apt install mariadb-server mariadb-client -y
root@dolibarr:~# mysql_secure_installation
root@dolibarr:~# mysql -u root -h localhost -p

MariaDB [(none)]> CREATE USER 'dolibarr'@'localhost' IDENTIFIED BY 'DolibarrStrongPassword123#';
MariaDB [(none)]> CREATE DATABASE dolibarr;
MariaDB [(none)]> GRANT ALL PRIVILEGES ON dolibarr.* TO 'dolibarr'@'localhost';
MariaDB [(none)]> FLUSH PRIVILEGES;
MariaDB [(none)]> QUIT;
```

## Dolibarr
```shell
root@dolibarr:~# release_tag=$(curl -s https://api.github.com/repos/Dolibarr/dolibarr/releases/latest | grep tag_name | cut -d '"' -f 4)
root@dolibarr:~# wget https://github.com/Dolibarr/dolibarr/archive/${release_tag}.tar.gz
root@dolibarr:~# tar xvf ${release_tag}.tar.gz
root@dolibarr:~# mv dolibarr-${release_tag} /opt/dolibarr
root@dolibarr:~# chown -R www-data:www-data /opt/dolibarr
```

## HTTP
```shell
root@dolibarr:~# apt -y install apache2
root@dolibarr:~# a2enmod rewrite
root@dolibarr:~# vim /etc/apache2/sites-enabled/dolibarr.conf
....
<VirtualHost *:80>
     ServerAdmin dolibarr@home.lab
     ServerName dolibarr.home.lab
     ServerAlias www.dolibarr.home.lab
     DocumentRoot /opt/dolibarr/htdocs/

     <Directory /opt/dolibarr/htdocs>
        Options +FollowSymlinks
        AllowOverride All
        Require all granted
     </Directory>

     ErrorLog /var/log/apache2/dolibarr_error.log
     CustomLog /var/log/apache2/dolibarr_access.log combined
</VirtualHost>

root@dolibarr:~# apachectl -t
root@dolibarr:~# systemctl restart apache2
```

> After completing the steps, go to http://dolibarr.home.lab

