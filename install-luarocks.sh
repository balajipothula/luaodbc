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

curl -J -L https://luarocks.org/releases/luarocks-3.1.3.tar.gz -o $HOME/luarocks.tar.gz && \
tar -xzf $HOME/luarocks.tar.gz                                                          && \
rm  -rf  $HOME/luarocks.tar.gz                                                          && \
mv       $HOME/luarocks-* $HOME/luarocks                                                && \
cd       $HOME/luarocks                                                                 && \
./configure                                                                             && \
make build                                                                              && \
sudo make install                                                                       && \
rm  -rf  $HOME/luarocks

luarocks install --local odbc
