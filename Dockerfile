FROM tensorflow/tensorflow:1.5.0-gpu-py3

RUN apt-get update
RUN apt-get install -y git curl

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash \
    && apt-get install -y nodejs


RUN pip install -U git+https://github.com/jupyterlab/jupyterlab@v0.31.5
RUN jupyter labextension install @jupyterlab/plotly-extension


RUN pip install plotly
RUN pip install dm-sonnet

RUN pip install tfinterface
RUN pip install dataget
RUN pip install dicto
RUN pip install idx2numpy