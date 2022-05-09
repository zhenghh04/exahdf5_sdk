#!/bin/sh
# Build script for cache VOL, assuming HDF5_VOL_DIR is set in the make file
git clone https://github.com/hpc-io/vol-cache

cd vol-cache
sed -e "s/DEBUG +=/#DEBUG +=/g" src/Makefile > src/Makefile.local
cd src
make -f Makefile.local
cd ..
make all
cd ../
