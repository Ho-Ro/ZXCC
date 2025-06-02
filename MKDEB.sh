#!/bin/sh

# create a debian package

echo "John Elliott's CP/M 2/3 emulator for crosscompiling and running CP/M tools under MS Windows (command-line and Cygwin) as well as Linux/Unix/macOS." > description-pak
sudo checkinstall --install=no --backup=no --fstrans=no --pkggroup=development --pkgversion=$(git describe --tags)
