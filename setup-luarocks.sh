#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 12 August 2019,
# Description : Installing / Compiling Lua from Source Code.

# update package repositories.
yum -y update

# installing build essentials.
yum -y install gcc git make readline-devel unixODBC-devel unzip

# downloading, extracting and compiling lua.
curl http://www.lua.org/ftp/lua-5.1.2.tar.gz -o $HOME/lua.tar.gz && \
tar -xzf $HOME/lua.tar.gz -C $HOME                               && \
rm  -rf  $HOME/lua.tar.gz                                        && \
mv       $HOME/lua-* $HOME/lua                                   && \
cd       $HOME/lua                                               && \
make linux test                                                  && \
make install                                                     && \
rm  -rf  $HOME/lua

# downloading, extracting and compiling luarocks.
curl -J -L https://luarocks.org/releases/luarocks-3.1.3.tar.gz -o $HOME/luarocks.tar.gz && \
tar -xzf $HOME/luarocks.tar.gz -C $HOME                                                 && \
rm  -rf  $HOME/luarocks.tar.gz                                                          && \
mv       $HOME/luarocks-* $HOME/luarocks                                                && \
cd       $HOME/luarocks                                                                 && \
./configure                                                                             && \
make build                                                                              && \
make install                                                                            && \
rm  -rf  $HOME/luarocks

# adding mssql-tools repository on rhel_v8.
cat > /etc/yum.repos.d/msprod.repo <<EOF
[packages-microsoft-com-prod]
name=packages-microsoft-com-prod
baseurl=https://packages.microsoft.com/rhel/8/prod/
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

# removing previously installed mssql-tools and unixODBC-utf16-devel.
yum -y remove  mssql-tools unixODBC-utf16-devel

# installing mssql-tools and unixODBC-devel.
yum -y install mssql-tools unixODBC-devel

# updating mssql-tools to latest.
yum -y update mssql-tools

# setting mssql-tools binaries path permanently.
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc

# updating environment path.
source ~/.bashrc
