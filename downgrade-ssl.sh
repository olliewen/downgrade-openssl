cd /usr/local/src/
wget https://www.openssl.org/source/old/1.0.2/openssl-1.0.2k.tar.gz
tar -xvf /usr/local/src/openssl-1.0.2k.tar.gz
cd /usr/local/src/openssl-1.0.2k
./config --prefix=/usr/local/ --openssldir=/usr/local/openssl
make
make test
make install
mv /usr/bin/openssl /usr/bin/openssl-bak
cp -p /usr/local/openssl/bin/openssl /usr/bin/openssl
openssl version
