rpi-dnsmasq-server
=================

```shell
docker pull pihizi/rpi-dnsmasq
docker run --name pihizi-rpi-dnsmasq \
    --restart=always \
    -v /data/etc/dnsmasq.hosts:/etc/dnsmasq.hosts \
    -v /data/etc/dnsmasq.d:/etc/dnsmasq.d \
    -p 53:53 \
    -d pihizi/rpi-dnsmasq
