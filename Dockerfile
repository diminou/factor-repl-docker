FROM alpine:3.11.5

RUN apk update && apk add libx11-dev wget git git-doc gcc g++ make &&\
    wget https://downloads.factorcode.org/releases/0.98/factor-linux-x86-64-0.98.tar.gz &&\
    tar -xf factor-linux-x86-64-0.98.tar.gz -C / &&\
    rm factor-linux-x86-64-0.98.tar.gz

WORKDIR /factor

ENTRYPOINT [ "./factor" ]
CMD ["-i=boot.linux-x86.64.image -exclude=ui"]