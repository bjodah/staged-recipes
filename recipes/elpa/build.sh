#!/bin/bash
set -e
mkdir build
cd build
../configure FCFLAGS="-O2 -mavx" CFLAGS="-O2 -mavx" --prefix=$PREFIX --enable-option-checking=fatal FC=mpif90 --with-mpi=yes
make -j ${NUM_CPUS}
make install
