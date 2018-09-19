#!/bin/bash

## clean
./clean-test.sh
# for now we assume the build is there
# in a moment, we'll have to get the ip address and 
# update the dockerfile with an environment variable to make this test harness work
#./build.sh

#Setup the curl address to get the upload url from
TARGET_IP='http://'$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(cat ../../cidrefs/stl-upload.cid))
echo $TARGET_IP

## build
docker build -t stl-upload-test:local test/uploader/get

## run
docker run --cidfile ../../cidrefs/stl-upload-test.cid --env TARGET_IP=$TARGET_IP -it stl-upload-test:local 

## run and get a shell
#docker run --cidfile stl-upload-test.cid --env TARGET_IP=$TARGET_IP -it stl-upload-test:local /bin/bash
