#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 31 August 2016,
# Description : Installing / Compiling Lua from Source Code.

# update package repositories.
sudo yum -y update

# installing build essentials.
sudo yum -y install gcc git make readline-devel unixODBC-devel unzip

# downloading, extracting and compiling luarocks.
curl -J -L https://luarocks.org/releases/luarocks-3.1.3.tar.gz -o $HOME/luarocks.tar.gz && \
tar -xzf $HOME/luarocks.tar.gz                                                          && \
rm  -rf  $HOME/luarocks.tar.gz                                                          && \
mv       $HOME/luarocks-* $HOME/luarocks                                                && \
cd       $HOME/luarocks                                                                 && \
./configure                                                                             && \
make build                                                                              && \
sudo make install                                                                       && \
rm  -rf  $HOME/luarocks
