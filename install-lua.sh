sudo yum -y update
sudo yum -y install gcc git make readline-devel unixODBC-devel unzip

curl http://www.lua.org/ftp/lua-5.1.2.tar.gz -o $HOME/lua.tar.gz && \
tar -xzf $HOME/lua.tar.gz                                        && \
rm  -rf  $HOME/lua.tar.gz                                        && \
mv       $HOME/lua-* $HOME/lua                                   && \
cd       $HOME/lua                                               && \
make linux test                                                  && \
sudo make install                                                && \
rm  -rf  $HOME/lua
