FROM alpine:3.9

# Update apk index.
RUN apk update

RUN apk add gcc libc-dev g++ util-linux

# Build dependencies.
RUN apk add build-base bash curl unzip

# Install packages necessary for Lua, Luarocks.
RUN apk add lua5.1 lua5.1-dev luarocks5.1
RUN apk add openssl openssl-dev

RUN luarocks-5.1 install luaossl
