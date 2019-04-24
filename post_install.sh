DIR_WWW=/usr/local/www

mkdir -p $DIR_WWW
cd $DIR_WWW
git clone https://github.com/causefx/organizr
chown -R www:www organizr

sysrc -f /etc/rc.conf php_fpm_enable="YES"
sysrc -f /etc/rc.conf caddy_enable="YES"
sysrc -f /etc/rc.conf caddy_cert_email="me@example.com"

service caddy start
service php-fpm start
