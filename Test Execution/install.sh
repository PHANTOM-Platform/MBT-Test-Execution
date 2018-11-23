#!/bin/bash

BINDIR="./bin"

mkdir $BINDIR

cd $BINDIR

ln -s ../src/* .

makefilegen -e mbttest ./*

make
