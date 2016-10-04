#! /bin/bash

export CC=$(which gcc)
export CXX=$(which g++)

mkdir _build && cd _build
cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX
make -j$CPU_COUNT all
make -j$CPU_COUNT install
