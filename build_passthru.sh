#!/bin/sh
git clone https://github.com/hpc-io/vol-external-passthrough
mkdir -p vol-external-passthrough/build
cd vol-external-passthrough/build
cmake .. -DCMAKE_INSTALL_PREFIX=$HDF5_VOL_DIR/ -DCMAKE_C_COMPILER=mpicc
make all install -j2
cd -

