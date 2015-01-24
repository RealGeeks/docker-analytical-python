FROM python:2
MAINTAINER bem@hq.realgeeks.com

RUN apt-get update && \
    apt-get install -y python-dev gfortran build-essential make gcc build-essential && \
    rm -rf /var/lib/apt/lists/*

ENV WORKDIR /tmp
WORKDIR ${WORKDIR}
COPY requirements.txt ${WORKDIR}/
RUN pip install -r ${WORKDIR}/requirements.txt
