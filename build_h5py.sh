#!/bin/sh
echo "Building h5py"
git clone https://github.com/h5py/h5py.git
echo "
#include "hdf5dev.h"
#ifndef H5E_BADATOM
#define H5E_BADATOM 1000
#endif
" >> $SDK_DIR/hdf5/include/hdf5.h
cd h5py
HDF5_MPI=ON CC=mpicc CXX=mpicxx python setup.py build
HDF5_MPI=ON CC=mpicc CXX=mpicxx python setup.py install --prefix=$SDK_DIR/h5py
cd -
