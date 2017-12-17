FROM python
FROM mongodb

MAINTAINER Alex Karelin <alex@karel.in>

ARG dir=/var/lib/polyglot
ARG polyglot2=polyglot-v2-linux-x64

WORKDIR ${dir}

RUN wget https://github.com/Einstein42/udi-polyglotv2/blob/master/binaries/${polyglot2}.tar.gz
RUN tar -zxf ${polyglot2}.tar.gz

ENTRYPOINT ["./${polyglot2}"]
