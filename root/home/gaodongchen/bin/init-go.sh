#!/bin/bash

GOPATH=$HOME/go; export GOPATH

GOBIN=$HOME/go/bin; export GOBIN

PATH=$GOBIN:$PATH; export PATH

mkdir -pv $GOPATH/src/github.com/golang && \
cd $GOPATH/src/github.com/golang && \
git clone https://github.com/golang/tools.git && \
git clone https://github.com/golang/net.git && \
git clone https://github.com/golang/crypto.git && \
git clone https://github.com/golang/sys.git && \
git clone https://github.com/golang/image.git && \
git clone https://github.com/golang/mobile.git && \
git clone https://github.com/golang/text && \
git clone https://github.com/golang/lint

mkdir -pv $GOPATH/src/golang.org &&\
 ln -s $GOPATH/src/github.com/golang $GOPATH/src/golang.org/x

 mkdir -pv $GOPATH/src/golang.org/x && \
ln -s $GOPATH/src/github.com/golang/tools $GOPATH/src/golang.org/x/tools && \
ln -s $GOPATH/src/github.com/golang/net $GOPATH/src/golang.org/x/net && \
ln -s $GOPATH/src/github.com/golang/crypto $GOPATH/src/golang.org/x/crypto && \
ln -s $GOPATH/src/github.com/golang/sys $GOPATH/src/golang.org/x/sys && \
ln -s $GOPATH/src/github.com/golang/image $GOPATH/src/golang.org/x/image && \
ln -s $GOPATH/src/github.com/golang/mobile $GOPATH/src/golang.org/x/mobile && \
ln -s $GOPATH/src/github.com/golang/text $GOPATH/src/golang.org/x/text && \
ln -s $GOPATH/src/github.com/golang/lint $GOPATH/src/golang.org/x/lint