git clone https://github.com/zhenghh04/h5bench.git
cd h5bench
git submodule update --init --recursive
rm -rf build
[ -e build ] || mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$SDK_DIR/h5bench  -DWITH_CACHE_VOL:BOOL=ON -DWITH_ASYNC_VOL:BOOL=ON -DCMAKE_C_FLAGS="-I/$HDF5_VOL_DIR/include -L/$HDF5_VOL_DIR/lib -g" -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DCMAKE_LD_FLAGS='-L$HDF5_VOL_DIR/lib'

make all install VERBOSE=1
cd ../../
