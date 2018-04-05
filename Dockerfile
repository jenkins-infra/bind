FROM ubuntu:trusty
RUN \
  apt-get update -q &&\
  apt-get install -y bind9 dnsutils && \
  rm -rf /var/lib/apt/lists/*

RUN ln -f -s /etc/bind/local/named.conf.local /etc/bind/
RUN mkdir /var/run/named

EXPOSE 53 53/udp

COPY etc/bind/named.conf.options /etc/bind/named.conf.options

# config files
VOLUME ["/etc/bind/local"]

CMD /usr/sbin/named -g
