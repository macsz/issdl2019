#!/usr/bin/env bash

wget -c -O anaconda.sh https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh

docker build -t macsz/issdl2019/base_conda .
