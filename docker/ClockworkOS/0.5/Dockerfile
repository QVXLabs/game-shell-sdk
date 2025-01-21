FROM scratch
LABEL org.opencontainers.image.authors="afalls@qvxlabs.com"

# add clockworkos image
ADD ./mnt/ /

# setup packages
COPY sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install debian-archive-keyring

# enable if you keep pkgs upgaded on gameshell device
RUN apt-get -y upgrade

# setup ld cache
RUN ldconfig

# install compiler tools
RUN apt -y install gcc g++ gdb gdbserver golang clang

# setup build user
RUN useradd build
USER build

# run and 'hang' so shell can be easily attached
CMD ["tail", "-f", "/dev/null"]
