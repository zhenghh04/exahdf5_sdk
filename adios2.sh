#!/bin/sh
#rm -rf ADIOS2
git clone -b v2.6.0 https://github.com/ornladios/ADIOS2.git
source setup.sh
module load gcc cmake
cd ADIOS2
rm -rf build
mkdir build
cd build
cmake .. \
      -DCMAKE_INSTALL_PREFIX=$SOFTDIR/adios2 -DCMAKE_C_COMPILER=mpicc \
      -DCMAKE_CXX_COMPILER=mpicxx \
      -DCMAKE_Fortran_COMPILER=mpif90 \
      -DCMAKE_CXX_FLAGS=' -g -O2 -fPIC' \
      -DCMAKE_C_FLAGS='-g -O2 -fPIC' \
      -DCMAKE_Fortran_FLAGS='-g -O2 -fPIC' \
      -DADIOS2_USE_SST=OFF

make all install
cd -
