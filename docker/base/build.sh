#!/usr/bin/env bash

if [[ ! -d tensorflow_datasets ]];
then
    wget -c http://ml.eti.pg.gda.pl/files/tensorflow_datasets.tar.gz
    tar -xvf tensorflow_datasets.tar.gz
    rm -f tensorflow_datasets.tar.gz
fi

docker build --build-arg all_proxy=${all_proxy} \
             --build-arg ftp_proxy=${ftp_proxy} \
             --build-arg http_proxy=${http_proxy} \
             --build-arg https_proxy=${https_proxy} \
             --build-arg no_proxy=${no_proxy} \
             --build-arg socks_proxy=${socks_proxy} \
             -t macsz/issdl2019/base \
            .
