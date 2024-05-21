#!/bin/bash

cmake ${CMAKE_ARGS} -S . -B build -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED=YES -DBUILD_NON_SHARED=NO
cmake --build build --config Release --target install

# backwards compatibility
cp -v $PREFIX/lib/libdwarf${SHLIB_EXT} $PREFIX/lib/libdwarf${SHLIB_EXT}.0
