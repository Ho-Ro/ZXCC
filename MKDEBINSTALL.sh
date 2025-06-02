#!/bin/sh

# install the latest debian package

sudo dpkg -i $(ls zxcc_*.deb | tail -1)
