FROM macsz/issdl2019/base_conda

LABEL maintainer="Maciej Szankin <maciej.szankin@intel.com>"

RUN conda create -n venv python=3.5 --no-default-packages
RUN echo "source activate venv" >> ~/.bashrc
ENV PATH /opt/anaconda/envs/venv/bin:$PATH

RUN conda install tensorflow=1.13.1 -n venv
RUN apt-get -y install gcc && pip install tensorflow-datasets

