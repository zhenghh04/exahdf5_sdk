#!/bin/sh
git clone https://github.com/hpc-io/vol-cache

cd vol-cache
sed -e "s/DEBUG +=/#DEBUG +=/g" src/Makefile > src/Makefile.local
cd src
make -f Makefile.local
cd ..
make all
cd ../
