#!/bin/sh
# Build script for cache VOL, assuming HDF5_VOL_DIR is set in the make file
git clone https://github.com/hpc-io/vol-cache
mkdir -p vol-cache/build
cd vol-cache/build
export ASYNC_DIR=$HDF5_VOL_DIR
export ABT_DIR=$ABT_DIR
cmake .. -DCMAKE_INSTALL_PREFIX=$HDF5_VOL_DIR
make all install 
cd -
