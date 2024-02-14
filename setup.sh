#!/bin/sh -x
module load PrgEnv-gnu
function cmkdir() {
    for f in $@
    do
	[ -e $f ] || mkdir $f
    done
}
export EXAHDF5_ROOT=$PWD
export SDK_DIR=$EXAHDF5_ROOT/soft/
export HDF5_ROOT=$SDK_DIR/hdf5
export HDF5_HOME=$HDF5_ROOT
export HDF5_DIR=$HDF5_ROOT
export HDF5_VOL_DIR=$SDK_DIR/hdf5/vol
export ABT_DIR=$SDK_DIR/argobots/
export CC=mpicc
export CXX=mpicxx
cmkdir $SDK_DIR $HDF5_ROOT $HDF5_VOL_DIR $ABT_DIR $HDF5_VOL_DIR/lib $HDF5_VOL_DIR/include
export LD_LIBRARY_PATH=$ABT_DIR/lib:$LD_LIBRARY_PATH
#module use $PWD/modulefiles

PNETCDF_HOME=$SDK_DIR/pnetcdf/
NETCDF_HOME=$SDK_DIR/netcdf-c/
NETCDF_C_HOME=$SDK_DIR/netcdf-c/
NETCDF_F_HOME=$SDK_DIR/netcdf-f/
E3SM_IO_HOME=$SDK_DIR/e3sm_io
export LD_LIBRARY_PATH=$HDF5_ROOT/lib:$ABT_DIR/lib:$HDF5_VOL_DIR/lib/:${PNETCDF_HOME}/lib:${NETCDF_HOME}/lib:$LD_LIBRARY_PATH
export PATH=$HDF5_VOL_DIR/bin/:$PATH:$SDK_DIR/h5bench/bin:${E3SM_IO_HOME}/bin/:$SDK_DIR/bin/
export HPCTW_PRELOAD=$PWD/soft/hpctw/lib/libmpitrace.so
export PATH=$SDK_DIR/curl/bin/:$PATH
export LD_LIBRARY_PATH=$SDK_DIR/curl/lib/:$LD_LIBRARY_PATH
