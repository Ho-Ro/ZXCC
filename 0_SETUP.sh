#!/bin/sh

HERE=$(pwd)

#
# Enter CPM.COM and create Makefile.am with all *.com files in the directory.
# These *.com files will be added to the zxcc_*.deb package by checkinstall.
#

cd CPM.COM
echo creating CPM.COM/Makefile.am
sh MK_Makefile_am.sh > Makefile.am
cd $HERE

#
# Update the configure files if you get an error about a missing
# file (like WARNING: "'aclocal-1.11' is missing on your system.")
# because you have a later version installed.  Requires that the
# automake and autoconf packages (and prerequisites) are installed.
#

for dir in $HERE $HERE/cpmio $HERE/cpmredir ; do
        echo preparing $dir
        cd $dir
        aclocal
        autoconf
        autoheader
        automake --add-missing
        cd $HERE
done
