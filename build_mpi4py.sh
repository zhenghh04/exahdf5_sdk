#!/bin/sh
git clone https://github.com/mpi4py/mpi4py.git
version=$(python -c "import sys; print('%s.%s'%(sys.version_info[0], sys.version_info[1]))")
cd mpi4py
CC=mpicc CXX=mpicxx python setup.py build
CC=mpicc CXX=mpicxx python setup.py install --prefix=$SDK_DIR/mpi4py/
cd -
export MPI4PY_PATH=$SDK_DIR/mpi4py/lib/python$version/site-package
export PYTHONPATH=$MPI4PY_PATH:$PYTHONPATH


		     
