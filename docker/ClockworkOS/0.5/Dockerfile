FROM debian/eol:stretch
WORKDIR /home/build
LABEL org.opencontainers.image.authors="afalls@qvxlabs.com"

# settings
ARG DOCKER_LANG=en_US.UTF-8

# setup packages
COPY sources.list /etc/apt/sources.list
COPY clockworkos_v0.5-pkg-list.txt /home/root/clockworkos_v0.5-pkg-list.txt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y upgrade

# setup locales
ENV LANGUAGE=${DOCKER_LANG}
ENV LANG=${DOCKER_LANG}
ENV LC_CTYPE=${DOCKER_LANG}
ENV LC_ALL=${DOCKER_LANG}
RUN apt-get install -y locales && \
    sed -i -e "s/# $LANG.*/$LANG UTF-8/" /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=$LANG
    
# install preinstalled clockwork-os packages
RUN xargs apt-get -y install < /home/root/clockworkos_v0.5-pkg-list.txt

# install compiler tools
RUN apt -y install gcc g++ gdb gdbserver golang clang

# setup build user
RUN useradd build
USER build

# run test
CMD ["tail", "-f", "/dev/null"]
