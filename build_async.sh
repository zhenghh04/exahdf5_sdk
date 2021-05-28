#!/bin/sh
git clone https://github.com/hpc-io/vol-async
cd vol-async/src
sed -e "s/HDF5_DIR =/#HDF5_DIR =/g" -e "s/ABT_DIR =/#ABT_DIR =/g" -e "s/CC = cc/CC=mpicc/g" Makefile > Makefile.local
make -f Makefile.local
cp lib* $HDF5_VOL_DIR/lib
cp *.h $HDF5_VOL_DIR/include
cd -
