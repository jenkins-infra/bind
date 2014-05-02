FROM ubuntu:trusty
RUN apt-get install -y bind9 dnsutils
RUN ln -f -s /etc/bind.local/named.conf.local /etc/bind/named.conf.local
RUN mkdir /var/run/named; chown bind /var/run/named

EXPOSE 53 53/udp

# config files
VOLUME ["/etc/bind"]

CMD /usr/sbin/named -g -u bind
