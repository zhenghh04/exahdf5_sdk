#!/bin/sh
# Build script for cache VOL, assuming HDF5_VOL_DIR is set in the make file
git clone https://github.com/hpc-io/vol-cache
module load cmake
mkdir -p vol-cache/build
cd vol-cache/build
cmake .. -DCMAKE_INSTALL_PREFIX=$HDF5_VOL_DIR
make all install  -j 2 
cd -
