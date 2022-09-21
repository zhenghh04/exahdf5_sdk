#!/bin/sh
# Build script for Async VOL, assumming that HDF5_VOL_DIR environment variable is set
git clone https://github.com/hpc-io/vol-async
mkdir -p vol-async/build_debug
cd vol-async/build_debug
export ABT_DIR=$ABT_DIR
cmake .. -DCMAKE_INSTALL_PREFIX=$HDF5_VOL_DIR -DCMAKE_C_FLAGS="-DENABLE_DBG_MSG=1 -DPRINT_ERROR_STACK=1 -DENABLE_ASYNC_LOGGING" -DCMAKE_C_COMPILER=mpicc
make all install
cd -
