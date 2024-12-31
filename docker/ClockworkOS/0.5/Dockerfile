FROM debian/eol:stretch
WORKDIR /home/build
LABEL org.opencontainers.image.authors="afalls@qvxlabs.com"

# setup default packages
COPY sources.list /etc/apt/sources.list
COPY clockworkos_v0.5-pkg-list.txt /home/root/clockworkos_v0.5-pkg-list.txt
RUN apt-get update
RUN apt-get -y upgrade
RUN xargs apt-get -y install < /home/root/clockworkos_v0.5-pkg-list.txt

# install compiler tools
RUN apt -y install gcc g++ gdb gdbserver golang clang

# setup build user
RUN useradd build
USER build

# run test
CMD ["tail", "-f", "/dev/null"]
