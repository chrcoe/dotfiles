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
    tmux

RUN easy_install pip
RUN pip install virtualenvwrapper
RUN pip install --user git+git://github.com/Lokaltog/powerline

ADD entrypoint /entrypoint

# RUN useradd -g wheel,docker -ms /bin/zsh chrcoe
RUN useradd -ms /bin/zsh chrcoe
RUN chown chrcoe:chrcoe /entrypoint
VOLUME ["/code", "/home/chrcoe/.dotfiles"]
USER chrcoe
WORKDIR "/home/chrcoe"
