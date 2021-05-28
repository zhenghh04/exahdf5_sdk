#!/bin/sh
function cmkdir() {
    for f in $@
    do
	[ -e $f ] || mkdir $f
    done
}
export EXAHDF5_ROOT=$PWD
export SDK_DIR=$EXAHDF5_ROOT/soft/
export HDF5_ROOT=$SDK_DIR/hdf5
export HDF5_DIR=$HDF5_ROOT
export HDF5_VOL_DIR=$SDK_DIR/hdf5/vol
export ABT_DIR=$SDK_DIR/argobots/
export CC=mpicc
export CXX=mpicxx
cmkdir $SDK_DIR $HDF5_ROOT $HDF5_VOL_DIR $ABT_DIR

