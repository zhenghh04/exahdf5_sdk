#!/bin/sh
# Build script for Async VOL, assumming that HDF5_VOL_DIR environment variable is set
git clone https://github.com/hpc-io/vol-async
mkdir -p vol-async/build
cd vol-async/build
export ABT_DIR=$ABT_DIR
cmake .. -DCMAKE_INSTALL_PREFIX=$HDF5_VOL_DIR -DCMAKE_EXE_LINKER_FLAGS='-lz'
make all install
cd -
