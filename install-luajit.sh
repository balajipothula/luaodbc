#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 15 August 2019,
# Description : Installing / Compiling LuaJIT from Source Code.

# update package repositories.
sudo yum -y update

# installing build essentials.
sudo yum -y install gcc make

# downloading, extracting and compiling lua.
curl http://luajit.org/download/LuaJIT-2.0.5.tar.gz -o $HOME/LuaJIT.tar.gz && \
tar -xzf $HOME/LuaJIT.tar.gz -C $HOME                                      && \
rm  -rf  $HOME/LuaJIT.tar.gz                                               && \
mv       $HOME/LuaJIT-* $HOME/lua                                          && \
cd       $HOME/LuaJIT                                                      && \
sudo make install                                                          && \
rm  -rf  $HOME/LuaJIT
