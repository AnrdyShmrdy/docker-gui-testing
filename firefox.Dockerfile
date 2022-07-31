FROM ubuntu:20.04

ENV DISPLAY=host.docker.internal:0.0

RUN apt-get update
RUN apt-get -y install \
    firefox \
    libcanberra-gtk-module \
    libcanberra-gtk3-module
RUN apt-get clean

CMD ["firefox"]