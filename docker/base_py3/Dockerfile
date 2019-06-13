FROM macsz/issdl2019/base

LABEL maintainer="Maciej Szankin <maciej.szankin@intel.com>"

RUN apt-get -y install \
    python3 \
    python3-pip

RUN ln -s /usr/bin/python3 /usr/bin/python && ln -s /usr/bin/pip3 /usr/bin/pip
RUN pip install --upgrade setuptools pip

