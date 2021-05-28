#!/bin/sh
git clone https://github.com/hpc-io/vol-external-passthrough
cd vol-external-passthrough
if [[ $UNAME_S -eq "Linux" ]]
then
    LIBNAME=so
else
    LIBNAME=dylib
fi
cd vol-external-passthrough
sed -e "s/dylib/$LIBNAME/g" -e "s/HDF5_DIR=/#HDF5_DIR=/g" -e "s/dynamiclib/shared/g" -e "s/-current_version 1.0//g" Makefile > Makefile.local
make -f Makefile.local
cp -v *.h $HDF5_VOL_DIR/include
cp -v lib* $HDF5_VOL_DIR/lib
cd -

