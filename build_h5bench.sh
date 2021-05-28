git clone https://github.com/hpc-io/h5bench.git
mkdir h5bench/build
cd h5bench/build
cmake .. -DCMAKE_INSTALL_PREFIX=$SDK_DIR/h5bench
make all install
cd -
