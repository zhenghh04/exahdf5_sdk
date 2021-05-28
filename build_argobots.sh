#!/bin/sh
git clone https://github.com/pmodels/argobots.git
cd argobots
./autogen.sh
CC=gcc CXX=g++ ./configure --prefix=$ABT_DIR
make all install -j4 
cd -
