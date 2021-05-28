#!/bin/sh
# This is for building HDF5 binary
#
#module load intelmpi-login-eng
#export LDFLAGS="-llustreapi -L/opt/cray/pe/pmi/5.0.14/lib64/ -lpmi"
git clone -b async_vol_register_optional https://github.com/hpc-io/hdf5.git
cd hdf5
./autogen.sh
CC=mpicc CXX=mpicxx CFLAGS='-O3 -DTHETA -Dtopo_timing' ./configure --enable-parallel --enable-symbols=yes --prefix=$HDF5_ROOT/ --enable-build-mode=debug --enable-shared --enable-parallel --enable-threadsafe --enable-unsupported
make -j 8
make install
cd -
