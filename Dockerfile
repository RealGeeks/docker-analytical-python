FROM python:2
MAINTAINER bem@hq.realgeeks.com

RUN apt-get update && \
    apt-get install -y gfortran build-essential make gcc build-essential && \
    rm -rf /var/lib/apt/lists/*

ENV WORKDIR .
RUN pip install -r requirements.txt
