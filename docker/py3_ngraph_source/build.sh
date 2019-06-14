#!/usr/bin/env bash

wget -c -O bazel.sh https://github.com/bazelbuild/bazel/releases/download/0.21.0/bazel-0.21.0-installer-linux-x86_64.sh

docker build -t macsz/issdl2019/py3_ngraph_source .
