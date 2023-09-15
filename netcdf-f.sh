#!/bin/sh
module load gcc
git clone -b v4.5.4 https://github.com/Unidata/netcdf-fortran.git netcdf-f
cd netcdf-f
./configure --prefix=$NETCDF_F_HOME CPPFLAGS="-I$NETCDF_C_HOME/include -I$HDF5_ROOT/include" LDFLAGS="-L${NETCDF_C_HOME}/lib -lnetcdf -L${HDF5_ROOT}/lib -lhdf5 -lhdf5_hl" CC=mpicc FC=mpif90 F77=mpif77
make -j4 all install
cd -
