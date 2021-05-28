#!/bin/sh
git clone https://github.com/hpc-io/vol-external-passthrough
cd vol-external-passthrough
sed -e "s/dylib/so/g" -e "s/HDF5_DIR=/#HDF5_DIR=/g" -e "s/dynamiclib/shared/g" -e "s/-current_version 1.0//g" Makefile > Makefile.local
make -f Makefile.local
cp *.h $HDF5_VOL_DIR/include
cp lib* $HDF5_VOL_DIR/lib
cd -
