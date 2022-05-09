#!/bin/sh
# Build script for Async VOL, assumming that HDF5_VOL_DIR environment variable is set
git clone https://github.com/hpc-io/vol-async
cd vol-async/src
sed -e "s/HDF5_DIR =/#HDF5_DIR =/g" -e "s/ABT_DIR =/#ABT_DIR =/g" -e "s/CC = cc/CC=mpicc/g" -e "s/\$(STATHDR)//g" Makefile > Makefile.local
make -f Makefile.local
cp -v lib* $HDF5_VOL_DIR/lib
cp -v *.h $HDF5_VOL_DIR/include
cd -
