FROM macsz/issdl2019/base_py3

LABEL maintainer="Maciej Szankin <maciej.szankin@intel.com>"

RUN add-apt-repository ppa:ubuntu-toolchain-r/test \
    && apt-get -y update \
    && apt-get -y install gcc-4.8 \
    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50

RUN pip install \
    tensorflow==1.13.1 \
    tensorflow_datasets \
    virtualenv==16.0.0 \
    ngraph-tensorflow-bridge
