FROM ubuntu:18.04

RUN apt update && apt-get --yes install libc6-dev libpango1.0-dev libx11-dev xorg-dev libgtk2.0-dev gtk2-engines-pixbuf libgtkglext1-dev wget git git-doc rlwrap gcc g++ make &&\
    wget https://downloads.factorcode.org/releases/0.98/factor-linux-x86-64-0.98.tar.gz &&\
    tar -xf factor-linux-x86-64-0.98.tar.gz -C / &&\
    rm factor-linux-x86-64-0.98.tar.gz

WORKDIR /factor

ENTRYPOINT [ "./factor" ]