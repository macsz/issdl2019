FROM ubuntu:16.04

LABEL maintainer="Maciej Szankin <maciej.szankin@intel.com>"

# PROXY SETTINGS
ARG all_proxy
ARG ftp_proxy
ARG http_proxy
ARG https_proxy
ARG no_proxy
ARG socks_proxy

ENV all_proxy $all_proxy
ENV ftp_proxy $ftp_proxy
ENV http_proxy $http_proxy
ENV https_proxy $https_proxy
ENV no_proxy $no_proxy
ENV socks_proxy $socks_proxy

RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get dist-upgrade \
    && apt-get -y autoremove

RUN apt-get -y install \
    git \
    software-properties-common \
    unzip \
    wget \
    vim

WORKDIR /root/

RUN git clone https://github.com/tensorflow/models.git \
    && cd /root/models/ \
    && git checkout 4079c5d9693142a406f6ff392d14e2034b5f496d

ADD tensorflow_datasets /root/tensorflow_datasets
ENTRYPOINT ["python", "models/tutorials/image/cifar10/cifar10_train.py"]
