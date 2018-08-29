FROM ubuntu:bionic
LABEL maintainer="bem@realgeeks.com"

RUN apt update && \
    apt install -y git python3 python3-dev python3-pip openssl gfortran make gcc build-essential libffi-dev libssl-dev pkg-config libfreetype6-dev libpng-dev locales apt-utils && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install pipenv

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

WORKDIR /tmp
COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock
RUN set -ex && pipenv install --deploy --system
