#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 15 August 2019,
# Description : Installing / Compiling LuaJIT from Source Code.

# update package repositories.
sudo yum -y update

# installing build essentials.
sudo yum -y install gcc make

# downloading, extracting and compiling lua.
curl http://www.lua.org/ftp/lua-5.1.2.tar.gz -o $HOME/lua.tar.gz && \
tar -xzf $HOME/lua.tar.gz -C $HOME                               && \
rm  -rf  $HOME/lua.tar.gz                                        && \
mv       $HOME/lua-* $HOME/lua                                   && \
cd       $HOME/lua                                               && \
make linux test                                                  && \
sudo make install                                                && \
rm  -rf  $HOME/lua
