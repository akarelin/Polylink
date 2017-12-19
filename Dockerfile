FROM debian:stretch
FROM python:slim-stretch
FROM python:2-slim-stretch
FROM mongo

MAINTAINER Alex Karelin <alex@karel.in>

EXPOSE 3000

ARG dir=/var/lib/polyglot
ARG polyglot2=polyglot-v2-linux-x64

WORKDIR ${dir}

ADD . https://github.com/Einstein42/udi-polyglotv2/raw/master/binaries/${polyglot2}.tar.gz
RUN tar -zxf ${polyglot2}.tar.gz

ENTRYPOINT ["./${polyglot2}"]
