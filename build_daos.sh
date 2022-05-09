#!/bin/sh
git clone git@github.com:HDFGroup/vol-daos.git
cd vol-daos
[ -e build ] || mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$SDK_DIR/hdf5/vol
make all install
cd $EXAHDF5_ROOT
