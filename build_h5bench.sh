#!/bin/sh
# Build script for h5bench. Here we only build the baseline program which is h5bench_write, and h5bench_read
git clone https://github.com/hpc-io/h5bench.git
# If one need cache vol support, it has to be git clone https://github.com/zhenghh04/h5bench.git
mkdir h5bench/build
cd h5bench/build
cmake .. -DCMAKE_INSTALL_PREFIX=$SDK_DIR/h5bench  \
    -DWITH_CACHE_VOL:BOOL=ON -DWITH_ASYNC_VOL:BOOL=ON \
    -DCMAKE_C_FLAGS="-I/$HDF5_VOL_DIR/include -L/$HDF5_VOL_DIR/lib -g" \
    -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx

make all install VERBOSE=1
cp -vf h5bench* $SDK_DIR/h5bench/bin
cd -
