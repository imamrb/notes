#!/bin/bash
sudo apt install wget

cd ~/Downloads

wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz
tar zxvf openssl-1.1.1g.tar.gz

cd openssl-1.1.1g
./config --prefix=$HOME/.openssl/openssl-1.1.1g --openssldir=$HOME/.openssl/openssl-1.1.1g

make
make test

make install

rm -rf ~/.openssl/openssl-1.1.1g/certs
ln -s /etc/ssl/certs ~/.openssl/openssl-1.1.1g/certs

cd
rm -r ~/Downloads/openssl-1.1.1g
# RUBY_CONFIGURE_OPTS=--with-openssl-dir=$HOME/.openssl/openssl-1.1.1g rbenv install 3.0.3
