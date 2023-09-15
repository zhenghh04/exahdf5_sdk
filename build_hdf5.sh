#!/bin/sh
# This is for building HDF5 binary
#
#module load intelmpi-login-eng
#export LDFLAGS="-llustreapi -L/opt/cray/pe/pmi/5.0.14/lib64/ -lpmi"
#rm -rf hdf5
git clone https://github.com/HDFGroup/hdf5.git
#git clone -b post_open_fix https://github.com/hpc-io/hdf5.git
cd hdf5
./autogen.sh
CC=mpicc CXX=mpicxx CFLAGS='-O3 -DTHETA -Dtopo_timing' ./configure --enable-parallel --enable-symbols=yes --prefix=$HDF5_ROOT/ --enable-build-mode=debug --enable-shared --enable-parallel --enable-threadsafe --enable-unsupported --enable-map-api
make -j 8
make install
cd -
