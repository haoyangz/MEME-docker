FROM ubuntu:14.04

MAINTAINER Haoyang Zeng <haoyangz@mit.edu>

RUN mkdir /meme/
WORKDIR /meme/
RUN wget http://meme-suite.org/meme-software/4.10.2/meme_4.10.2.tar.gz && tar zxf meme_4.10.2.tar.gz && cd meme_4.10.2 && \
./configure --prefix=$HOME/meme --with-url=http://meme-suite.org --enable-build-libxml2 --enable-build-libxslt && \
make && \
make test && \
make install

ENV  PATH $HOME/meme/bin:$PATH
