#!/bin/sh
MKLROOT=/opt/intel
CXXFLAGS=" -std=c++11  "
LDFLAGS="-Wl,-rpath,/usr/local/lib:$MKLROOT/mkl/lib/intel64:$MKLROOT/lib/intel64 -lmkldnn -L$MKLROOT/mkl/lib/intel64 -L$MKLROOT/lib/intel64   -liomp5  "
SRC=conv.cpp
TARGET=conv.exe

rm -rf $TARGET
g++ $CXXFLAGS $SRC $LDFLAGS -o $TARGET
