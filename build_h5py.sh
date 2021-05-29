#!/bin/sh
[ -e $SDK_DIR/mpi4py/] || source build_mpi4py.sh
echo "Building h5py"
git clone https://github.com/h5py/h5py.git
echo "
#include \"hdf5dev.h\"
#ifndef H5E_BADATOM
#define H5E_BADATOM 1000
#endif
" >> $SDK_DIR/hdf5/include/hdf5.h


version=$(python -c "import sys; print('%s.%s'%(sys.version_info[0], sys.version_info[1]))")
export PYTHONPATH=$SDK_DIR/h5py/lib/python$version/site-packages:$PYTHONPATH

cd h5py
HDF5_MPI=ON CC=mpicc CXX=mpicxx python setup.py build
HDF5_MPI=ON CC=mpicc CXX=mpicxx python setup.py install --prefix=$SDK_DIR/h5py
cd -
export H5PY_PATH=$(ls -d $SDK_DIR/h5py/lib/python$version/site-packages/h5py*.egg)


