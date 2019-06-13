#!/usr/bin/env bash

DEP_ORDER=(
    base
    base_py2
    base_py3
    py2_tf113
    py3_tf113
)

for CONTAINER_NAME in "${DEP_ORDER[@]}"
do
    pushd .
    cd $CONTAINER_NAME;
    ./build.sh;
    popd;
done;
