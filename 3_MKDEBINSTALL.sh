#!/bin/sh

sudo apt install $(pwd)/$(ls zxcc_*_amd64.deb | tail -1)
