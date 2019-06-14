FROM macsz/issdl2019/base

LABEL maintainer="Maciej Szankin <maciej.szankin@intel.com>"

RUN apt-get -y install \
    bzip2

# ANACONDA
ADD anaconda.sh /root/anaconda.sh
RUN chmod +x /root/anaconda.sh && bash /root/anaconda.sh -b -p /opt/anaconda && rm /root/anaconda.sh
ENV PATH /opt/anaconda/bin:$PATH
RUN conda init bash

