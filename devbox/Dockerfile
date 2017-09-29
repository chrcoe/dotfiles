FROM ubuntu:latest

# add future args here!
ARG GO_VERS=1.9
ARG USERNAME=chrcoe

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
    tree \
    whois \
    software-properties-common

# repo for installing newer golang versions (ubuntu is stuck on 1.6!)
RUN add-apt-repository ppa:gophers/archive && \
    apt-get update && \
    apt-get install -y golang-$GO_VERS-go

RUN ln -s /usr/lib/go-$GO_VERS/bin/go /usr/local/bin/go

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

RUN easy_install pip
RUN pip install virtualenvwrapper
RUN pip install powerline-status

ADD entrypoint /entrypoint

RUN useradd -ms /bin/zsh $USERNAME
RUN chown $USERNAME:$USERNAME /entrypoint

VOLUME ["/home/$USERNAME/.dotfiles"]
USER $USERNAME
WORKDIR "/home/$USERNAME"
