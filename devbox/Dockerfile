FROM ubuntu:latest

RUN apt-get update --fix-missing
RUN apt-get install -y \
    gcc \
    git \
    libffi-dev \
    libssl-dev \
    python2.7 \
    python2.7-dev \
    python-setuptools \
    build-essential \
    wget \
    curl \
    net-tools \
    zsh \
    vim \
    tmux \
    tree

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl


RUN easy_install pip
RUN pip install virtualenvwrapper
RUN pip install powerline-status

ADD entrypoint /entrypoint

# RUN useradd -g wheel,docker -ms /bin/zsh chrcoe
RUN useradd -ms /bin/zsh chrcoe
RUN chown chrcoe:chrcoe /entrypoint

VOLUME ["/home/chrcoe/.dotfiles"]
USER chrcoe
WORKDIR "/home/chrcoe"
