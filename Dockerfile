FROM ubuntu:14.04
MAINTAINER Reimund Klain <reimund.klain@condevtec.de>

RUN apt-get update && apt-get install -y \
    libcurl3 \
    build-essential \
    automake \
    autotools-dev \
    libjansson-dev \
    autoconf \
    libcurl4-gnutls-dev \
    git && apt-get clean ; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV USERNAME=princessshilpa2016@gmail.com
ENV PASSWORD=x
ENV URL="stratum+tcp://xmr.pool.minergate.com:45560"
ENV ALGORITHM=cryptonight
ENV PRIORITY=19

ADD run.sh /usr/local/bin/run.sh
RUN chmod 755 /usr/local/bin/run.sh
EXPOSE 8080
CMD /usr/local/bin/run.sh
