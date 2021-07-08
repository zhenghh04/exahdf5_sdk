#!/bin/sh
# This is for installing guppy package for memory profiling for Python workloads
git clone https://github.com/zhuyifei1999/guppy3
cd guppy3
python setup.py build
python setup.py install --user
cd -
