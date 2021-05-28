#!/bin/sh
# Building HDF5
source setup.sh
source build_hdf5.sh
source build_argobots.sh
source build_async.sh
source build_passthru.sh
source build_h5py.sh
sed -e "s/PWD/$PWD/g" modulefiles/exahdf5.template > modulefiles/exahdf5



