#!/bin/sh
echo "Building h5py"
module load intelpython36
git clone https://github.com/h5py/h5py.git
cd h5py
HDF5_MPI=ON CC=mpicc CXX=mpicxx python setup.py
HDF5_MPI=ON CC=mpicc CXX=mpicxx python setup.py install --prefix=$SDK_DIR/h5py
cd -
