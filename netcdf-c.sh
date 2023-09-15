#!/bin/sh
export SOFT=$PWD/../soft
git clone -b v4.9.1 https://github.com/Unidata/netcdf-c.git
cd netcdf-c
./configure --prefix=$SOFT/netcdf-c/ CC='mpicc --std=c99' CXX='mpicxx --std=c99' LDFLAGS="-L$HDF5_ROOT/lib/ -lhdf5 -lhdf5_hl" CFLAGS="-I$HDF5_ROOT/include --std=c99"  
make -j4 all install
cd -
