#!/bin/sh

# update GNU autotools, configure and make

sh update-configure.sh
./configure
make -j

