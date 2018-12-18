#!/bin/bash

## clean
./exec/src/clean-messagebus.sh

mkdir -p ./cidrefs

## copy in a test stl
cp "./3d/model001.stl" "./src/messagebus/."

## build
docker build -t mongodb-messagebus:local ./src/messagebus

## run
docker run --cidfile ./cidrefs/mongodb-messagebus.cid mongodb-messagebus:local &

## remove stl from build area
rm -f "./src/messagebus/model001.stl"