#!/bin/sh
source setup.sh
#module load gcc
wget https://parallel-netcdf.github.io/Release/pnetcdf-1.12.2.tar.gz
tar -xzf pnetcdf-1.12.2.tar.gz

cd pnetcdf-1.12.2

./configure --with-netcdf4=$NETCDF_C_HOME/lib,$NETCDF_C_HOME/include LDFLAGS="-L$NETCDF_F_HOME/lib -lnetcdff -L$NETCDF_C_HOME/lib -lnetcdf -L$HDF5_ROOT/lib/ -lhdf5 -lhdf5_hl" CFLAGS="-I$HDF5_ROOT/include -I$NETCDF_C_HOME/include -I$NETCDF_F_HOME/include" MPICC=mpicc MPICXX=mpicxx MPIF77=mpif77 MPIF90=mpif90 --prefix=$PNETCDF_HOME/ --enable-shared F77=gfortan F90=gfortran
make -j4 all install
cd -
