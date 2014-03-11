#!/bin/sh

cd libpng
tar -xf libpng-1.6.9.tar.xz
cd libpng-1.6.9

./configure --prefix=$PREFIX 2>&1 | tee ../../logs/libpng-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/libpng-make.log
make install 2>&1 | tee ../../logs/libpng-makeinstall.log

cd ..
rm -rf libpng-1.6.9
