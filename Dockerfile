FROM golang:latest
MAINTAINER Subhasis Banik
RUN go get -u -d github.com/ipfs/go-ipfs                     &&\
    cd $GOPATH/src/github.com/ipfs/go-ipfs                   &&\
    make install                                             &&\
    cd /root						     &&\
    apt-get update                                           &&\
    apt-get install -y vim                                   &&\
    ipfs init

