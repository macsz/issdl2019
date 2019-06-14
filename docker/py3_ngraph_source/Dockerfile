FROM macsz/issdl2019/base_py3

LABEL maintainer="Maciej Szankin <maciej.szankin@intel.com>"

RUN add-apt-repository ppa:ubuntu-toolchain-r/test \
    && apt-get -y update \
    && apt-get -y install gcc-4.8 cmake g++ \
    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50

RUN pip install \
    tensorflow==1.13.1 \
    tensorflow_datasets \
    virtualenv==16.0.0

ADD bazel.sh /root/bazel.sh

# BAZEL
RUN chmod +x /root/bazel.sh && /root/bazel.sh --user
ENV PATH /root/bin/:$PATH

# NGRAPH
RUN git clone https://github.com/tensorflow/ngraph-bridge.git -b v0.14.1 /root/ngraph-bridge/
WORKDIR /root/ngraph-bridge/
RUN python build_ngtf.py --use_prebuilt_tensorflow

WORKDIR /root/
