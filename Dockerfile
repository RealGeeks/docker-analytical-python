FROM python:3-onbuild
MAINTAINER bem@hq.realgeeks.com

ENV environment production

RUN \
  apt-get update && \
  apt-get install python-numpy python-matplotlib python-pandas && \
  rm -rf /var/lib/apt/lists/*

