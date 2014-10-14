FROM debian:wheezy
MAINTAINER Quang Pham  "me@quangpham.com"

RUN apt-get update
RUN apt-get install -y squid3
RUN apt-get install -y -q supervisor
RUN apt-get clean

# Config Transmission
ADD squid/foreground.sh /etc/squid3/foreground.sh
RUN chmod 755 /etc/squid3/foreground.sh
ADD squid.conf /etc/squid3/squid.conf

# Config supervisor
RUN mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Add Start server
ADD start.sh /start.sh
RUN chmod 755 /start.sh

EXPOSE 3128

CMD ["/bin/bash", "-e", "/start.sh"]

