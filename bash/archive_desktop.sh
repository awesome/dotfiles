#!/bin/bash
ts=$(date "+%Y%m%d%H%M%S")
da=~/Documents/Desktop_Archives/$ts
mkdir -p $da
mv ~/Desktop/* $da
echo "created $da"
