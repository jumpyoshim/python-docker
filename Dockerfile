FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN set -x && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
      wget \
      mecab \
      libmecab-dev \
      mecab-ipadic-utf8 \
      portaudio19-dev

RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/

RUN pip install --upgrade pip \
    && pip install -r requirements.txt
ADD . /code/
