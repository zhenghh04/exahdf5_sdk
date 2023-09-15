git clone https://github.com/DataLib-ECP/vol-log-based.git
cd vol-log-based
autoreconf -i
./configure --prefix=$HDF5_VOL_DIR --with-hdf5=$HDF5_ROOT --enable-shared --enable-zlib 
make -j 4
make check
make install
cd -
