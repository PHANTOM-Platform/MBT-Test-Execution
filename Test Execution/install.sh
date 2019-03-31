#!/bin/bash

BINDIR="./bin"

mkdir $BINDIR

cd $BINDIR

ln -s ../src/* .

makefilegen -e mbttest ./*

#adopt the Makefile for deb package installation. 
sed -i 's!TTCN3_DIR = $!TTCN3_DIR = /usr!; s!-I$(TTCN3_DIR)/include!-I$(TTCN3_DIR)/include/titan -I$(TTCN3_DIR)/include!; s!-L$(TTCN3_DIR)/lib!-L$(TTCN3_DIR)/lib/titan -L$(TTCN3_DIR)/lib!' Makefile

make
