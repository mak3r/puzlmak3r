#!/bin/bash

## clean
./clean.sh

## build
docker build -t stl-upload:local src/web

## run
docker run --cidfile stl-upload.cid -d -p 4555:4555 stl-upload:local
