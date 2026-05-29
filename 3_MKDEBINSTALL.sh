#!/bin/sh

sudo dpkg -i $(pwd)/$(ls zxcc_*_amd64.deb | tail -1)
