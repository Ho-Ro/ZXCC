#!/bin/sh

echo "John Elliott's CP/M 2/3 emulator for crosscompiling and running CP/M tools under Linux" > description-pak

mkdir -p doc-pak
cp AUTHORS  ChangeLog  COPYING  README.md  zxcc.doc  zxcc.html doc-pak

mkdir -p doc-pak/cpmio
cp cpmio/README cpmio/COPYING.LIB doc-pak/cpmio

mkdir -p doc-pak/cpmredir
cp cpmredir/doc/* doc-pak/cpmredir

sudo checkinstall --install=no --backup=no --fstrans=no --pkggroup=development --pkgversion=$(git describe --tags)
