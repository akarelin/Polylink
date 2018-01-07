FROM debian:stretch
FROM mongo

MAINTAINER Alex Karelin <alex@karel.in>

EXPOSE 3000

ARG polyglot2=polyglot-v2-linux-x64
ARG HOME=/opt/polyglotv2/

ENV PYTHON=/usr/bin/python
ENV PYTHON3=/usr/bin/python3
ENV NODE_ENV=development
ENV USEDOCKER=true

RUN apt-get update
RUN apt-get dist-upgrade
RUN apt-get -qqy install git python3-pip python3-dev python2.7-dev python-pip

RUN mkdir -p ${HOME}
WORKDIR ${HOME}
RUN wget -q https://github.com/Einstein42/udi-polyglotv2/raw/master/binaries/${polyglot2}.tar.gz
RUN tar -zxf ${polyglot2}.tar.gz

ENTRYPOINT ["${HOME}${polyglot2}"]
