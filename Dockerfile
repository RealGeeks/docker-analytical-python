FROM python:2
MAINTAINER bem@hq.realgeeks.com

RUN apt-get update && \
    apt-get install -y python-numpy python-matplotlib python-pandas && \
    rm -rf /var/lib/apt/lists/*
