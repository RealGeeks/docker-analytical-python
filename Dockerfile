FROM ubuntu:bionic
LABEL maintainer="bem@realgeeks.com"

ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
RUN apt update
RUN apt install -y git python3.4 python3-dev python3-pip python3-tk openssl gfortran make gcc build-essential libffi-dev libssl-dev pkg-config libfreetype6-dev libpng-dev locales apt-utils
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen ; locale-gen
RUN rm -rf /var/lib/apt/lists/*
RUN pip3 install --upgrade pip
RUN pip3 install pipenv


WORKDIR /tmp
COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock
RUN set -ex && pipenv install --deploy --system
