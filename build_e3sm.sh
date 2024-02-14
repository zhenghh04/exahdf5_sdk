#!/bin/bash
source setup.sh
git clone https://github.com/Parallel-NetCDF/E3SM-IO.git
export E3SM_SOFT_HOME=$PWD/soft/
cd E3SM-IO
autoreconf -i
./configure --with-pnetcdf=${E3SM_SOFT_HOME}/pnetcdf \
            --with-hdf5=${HDF5_ROOT} \
            --with-logvol=${HDF5_ROOT}/vol/ \
            --with-cachevol=${HDF5_ROOT}/vol/ \
            --with-netcdf4=${E3SM_SOFT_HOME}/netcdf-c/ \
            --prefix=$PWD/soft/e3sm_io/ \
            CC=mpicc CXX=mpicxx
make -j 8
