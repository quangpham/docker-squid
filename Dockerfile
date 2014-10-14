FROM debian:wheezy
MAINTAINER Quang Pham  "me@quangpham.com"

RUN apt-get update
RUN apt-get install -y squid3
ADD squid.conf /etc/squid3/squid.conf
# Make cache dirs 
#RUN service squid3 start

EXPOSE 3128

# -X verbose debug logging
# -N Don't run in daemon mode - important for docker
#CMD service squid3 start

