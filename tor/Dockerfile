FROM alpine:3.8

ARG TOR_VER=0.3.5.8
ARG TORGZ=https://dist.torproject.org/tor-$TOR_VER.tar.gz

RUN apk --no-cache add --update \
  alpine-sdk gnupg libevent libevent-dev zlib zlib-dev openssl openssl-dev

RUN wget $TORGZ.asc && wget $TORGZ

# Verify tar signature
RUN gpg --keyserver pool.sks-keyservers.net --recv-keys 0x6AFEE6D49E92B601 \
  && gpg --verify tor-$TOR_VER.tar.gz.asc \
  # Install tor
  && tar xfz tor-$TOR_VER.tar.gz && cd tor-$TOR_VER \
&& ./configure && make install

RUN adduser -s /bin/bash -D -u 2000 tor

USER tor

# docker run -it --rm --network esploranet -v /home/debian/esplora-deploy/tor:/home/tor/tor tor
