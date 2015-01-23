FROM python:2
MAINTAINER bem@hq.realgeeks.com

RUN apt-get update && \
    apt-get install -y gfortran build-essential make gcc build-essential && \
    apt-get install -y python-numpy python-matplotlib python-pandas && \
    rm -rf /var/lib/apt/lists/*

ENV WORKDIR .
RUN pip install -r ${WORKDIR}/requirements.txt
