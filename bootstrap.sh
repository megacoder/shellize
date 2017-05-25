#!/bin/sh
./autogen.sh
./configure
make -j20 dist
