FROM debian/eol:stretch
WORKDIR /home/build
LABEL org.opencontainers.image.authors="afalls@qvxlabs.com"

# setup packages
COPY sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade
RUN apt -y install gcc g++ gdb gdbserver

# setup build user
RUN useradd build
USER build

# run test
CMD ["tail", "-f", "/dev/null"]