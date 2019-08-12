#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 31 August 2016,
# Description : Installing / Compiling Lua from Source Code.

# update package repositories.
sudo yum -y update

# installing build essentials.
sudo yum -y install gcc git make readline-devel unixODBC-devel unzip

# downloading, extracting and compiling lua.
curl http://www.lua.org/ftp/lua-5.1.2.tar.gz -o $HOME/lua.tar.gz && \
tar -xzf $HOME/lua.tar.gz                                        && \
rm  -rf  $HOME/lua.tar.gz                                        && \
mv       $HOME/lua-* $HOME/lua                                   && \
cd       $HOME/lua                                               && \
make linux test                                                  && \
sudo make install                                                && \
rm  -rf  $HOME/lua
