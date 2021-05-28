#!/bin/sh
export H5PY_PATH=$(ls -d --color=none $SDK_DIR/h5py/lib/python*/site-packages/h5py*.egg)
sed -e "s/PWD/${PWD//\//\\/}/g" -e "s/H5PY_PATH/${H5PY_PATH//\//\\/}/g" modulefiles/exahdf5.template > modulefiles/exahdf5
