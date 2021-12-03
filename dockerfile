FROM tensorflow/tensorflow:2.6.0-gpu

WORKDIR /app
COPY ./requirements.txt /app

WORKDIR /workdir

RUN pip install -r requirements.txt

RUN gdown --id 1-2LDKbMh5nJGtn1svJDBa7ZxNm6Jtrn0
RUN gdown --id 1-2a_KcDOE9zvtO2oSSLDcVegn9QP7YsN

RUN apt install unzip
RUN mkdir /workdir/data

RUN unzip hum_img.zip -d /workdir/data/
RUN unzip vocal_img.zip -d /workdir/data/