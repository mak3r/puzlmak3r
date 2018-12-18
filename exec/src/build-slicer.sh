#!/bin/bash

## clean
./exec/src/clean-slicer.sh

mkdir -p ./cidrefs

## copy in a test stl
cp "./3d/model001.stl" "./src/slicer/."

## build
docker build -t stl-slicer:local ./src/slicer

## run
docker run --cidfile ./cidrefs/stl-slicer.cid stl-slicer:local

## remove stl from build area
rm -f "./src/slicer/model001.stl"