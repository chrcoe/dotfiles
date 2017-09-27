FROM ubuntu:latest

RUN apt-get update --fix-missing
RUN apt-get install -y \
    gcc \
    git \
    libffi-dev \
    libssl-dev \
    python2.7 \
    python2.7-dev \
    zsh \
    vim \
    tmux

VOLUME ["/code"]

WORKDIR "/code"
