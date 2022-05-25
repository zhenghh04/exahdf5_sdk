git clone https://github.com/HDFGroup/vol-tests.git
cd vol-tests
[ -e build ] || mkdir build
CC=mpicc CXX=mpicxx HDF5_DIR=$HDF5_ROOT cmake ..
make
