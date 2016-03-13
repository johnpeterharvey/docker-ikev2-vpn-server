FROM ubuntu:latest

RUN  apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade \
  && DEBIAN_FRONTEND=noninteractive apt-get -y install strongswan iptables uuid-runtime \
  && rm -rf /var/lib/apt/lists/*

RUN rm /etc/ipsec.secrets

ENV SHARED_SECRET $SHARED_SECRET

ADD ./etc/* /etc/
ADD ./bin/* /usr/bin/

VOLUME /etc

# http://blogs.technet.com/b/rrasblog/archive/2006/06/14/which-ports-to-unblock-for-vpn-traffic-to-pass-through.aspx
EXPOSE 500/udp 4500/udp

CMD /usr/bin/start-vpn
