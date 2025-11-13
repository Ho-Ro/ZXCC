#!/bin/sh

#
# configure the build for the installation into prefix /usr/local
#

./configure --with-filetracker

#
# if you want to install into your home directory, then use:
# ./configure --prefix=$HOME --with-filetracker
#
