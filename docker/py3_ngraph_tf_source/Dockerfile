FROM macsz/issdl2019/base_py3

LABEL maintainer="Maciej Szankin <maciej.szankin@intel.com>"

#RUN add-apt-repository ppa:ubuntu-toolchain-r/test \
#    && apt-get -y update \
#    && apt-get -y install gcc-4.8 cmake g++ \
#    && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50

RUN pip install \
    virtualenv==16.0.0 \
    pip \
    six \
    numpy \
    wheel \
    setuptools \
    mock \
    future>=0.17.1
RUN pip install -U --user keras_applications==1.0.6 --no-deps
RUN pip install -U --user keras_preprocessing==1.0.5 --no-deps

ADD bazel.sh /root/bazel.sh

# BAZEL
RUN chmod +x /root/bazel.sh && /root/bazel.sh --user
ENV PATH /root/bin/:$PATH

# NGRAPH
RUN git clone https://github.com/tensorflow/ngraph-bridge.git -b v0.14.1 /root/ngraph-bridge/
WORKDIR /root/ngraph-bridge/
RUN apt-get -y install build-essential gcc g++ cmake
RUN python build_ngtf.py
RUN /bin/bash -c "source /root/ngraph-bridge/build_cmake/venv-tf-py3/bin/activate && pip install tensorflow_datasets"
RUN echo "source /root/ngraph-bridge/build_cmake/venv-tf-py3/bin/activate" >> ~/.bashrc

CMD ["/bin/bash", "-c", "source /root/ngraph-bridge/build_cmake/venv-tf-py3/bin/activate && python models/tutorials/image/cifar10/cifar10_train.py"]

WORKDIR /root/
