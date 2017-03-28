FROM ubuntu:xenial

RUN apt-get update && apt-get install -y cmake subversion build-essential libpng-dev libbz2-dev wget imagemagick

RUN svn co https://svn.code.sf.net/p/teem/code/teem/trunk teem

RUN mkdir teem-build
RUN cd teem-build && cmake -DBUILD_EXPERIMENTAL_LIBS:BOOL=ON -DBUILD_EXPERIMENTAL_APPS:BOOL=ON ../teem && make && make install
RUN nrrdSanity
