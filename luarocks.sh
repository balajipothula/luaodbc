make install CC="gcc -m32" PREFIX=$HOME/luajit


yum install readline-devel

sudo make install

package.cpath = package.cpath .. ";/home/ec2-user/.luarocks/lib/lua/5.1/odbc"

/home/ec2-user/.luarocks/lib/lua/5.1

https://github.com/nmap/nmap
https://github.com/moteus/lua-odbc
https://www.programering.com/q/MTM2YzMwATY.html


curl -J -L http://www.lua.org/ftp/lua-5.3.4.tar.gz -o $HOME/lua.tar.gz && \
tar xzf $HOME/lua.tar.gz -C $HOME/                                     && \
rm -rf  $HOME/lua.tar.gz                                               && \
mv lua* $HOME/lua                                                      && \
cd lua                                                                 && \
sudo make install

curl -k https://luarocks.org/releases/luarocks-3.1.3.tar.gz -o $HOME/luarocks.tar.gz && \
tar xzf      $HOME/luarocks-3.1.3.tar.gz -C $HOME/                                   && \
rm -rf       $HOME/luarocks.tar.gz                                                   && \
mv luarocks* $HOME/luarocks                                                          && \
cd luarocks                                                                          && \
./configure                                                                          && \
make build                                                                           && \
sudo make install
