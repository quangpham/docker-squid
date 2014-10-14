#/usr/bin/transmission-daemon -f -g /etc/transmission-daemon
#/usr/sbin/nginx -c /etc/nginx/nginx.conf
#/etc/init.d/transmission-daemon start
#nginx
set -e

if [ -f /configured ]; then
  exec /usr/bin/supervisord
fi

date > /configured
exec /usr/bin/supervisord