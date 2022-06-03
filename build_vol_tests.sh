git clone https://github.com/HDFGroup/vol-tests.git
cd vol-tests
[ -e build ] || mkdir build
cd build
HDF5_DIR=$HDF5_ROOT cmake .. -DHDF5_DIR=$HDF5_ROOT -DHDF5_VOL_TEST_ENABLE_PARALLEL=ON -DH\
DF5_VOL_TEST_ENABLE_ASYNC=ON -DHDF5_VOL_TEST_ENABLE_PART=ON
make
