# DOCKER-VERSION 0.1.0
FROM resin/rpi-raspbian
MAINTAINER 'pihizi@msn.com'

RUN apt-get update
RUN apt-get install -y dnsmasq

COPY dnsmasq.conf /etc/
COPY resolv.dnsmasq.conf /etc/

VOLUME /etc/dnsmasq.hosts
VOLUME /etc/dnsmasq.d

EXPOSE 53
ENTRYPOINT ["/usr/sbin/dnsmasq", "-d"]
