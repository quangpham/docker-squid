FROM debian:wheezy
MAINTAINER Quang Pham  "me@quangpham.com"

RUN apt-get update
RUN apt-get install -y squid3
#RUN apt-get install -y -q supervisor

ADD squid.conf /etc/squid3/squid.conf

EXPOSE 3128

CMD ["/etc/init.d/squid3", "start"]

