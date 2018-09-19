#!/bin/bash

## clean
./clean.sh

mkdir -p cidrefs

## build
docker build -t stl-upload:local ../../src/uploader/web

## run
docker run --cidfile ../../cidrefs/stl-upload.cid -d -p 4555:4555 stl-upload:local
