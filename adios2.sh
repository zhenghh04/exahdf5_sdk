#!/bin/sh
#rm -rf ADIOS2
git clone -b v2.6.0 https://github.com/ornladios/ADIOS2.git
source setup.sh
cd ADIOS2
mkdir -p build
cd build
cmake .. \
      -DCMAKE_INSTALL_PREFIX=$SDK_DIR/adios2 -DCMAKE_C_COMPILER=mpicc \
      -DCMAKE_CXX_COMPILER=mpicxx \
      -DCMAKE_Fortran_COMPILER=mpif90 \
      -DCMAKE_CXX_FLAGS=' -g -O2 -fPIC' \
      -DCMAKE_C_FLAGS='-g -O2 -fPIC' \
      -DCMAKE_Fortran_FLAGS='-g -O2 -fPIC' \
      -DADIOS2_USE_SST=OFF

make all install -j8 
cd -
