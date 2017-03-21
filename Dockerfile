FROM ubuntu:xenial

RUN apt-get update && apt-get install -y cmake subversion build-essential

RUN svn co https://svn.code.sf.net/p/teem/code/teem/trunk teem

RUN mkdir teem-build
RUN cd teem-build && cmake ../teem && make && make install
