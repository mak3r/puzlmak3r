#!/bin/bash

## clean
./exec/test/clean-post.sh
# for now we assume the build is there
# in a moment, we'll have to get the ip address and 
# update the dockerfile with an environment variable to make this test harness work
#./build.sh

cp "./3d/model001.stl" "./test/messagebus/post/model001.stl"

#Setup the curl address to get the upload url from
TARGET_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(cat ./cidrefs/mongodb-messagebus.cid))
echo $TARGET_IP

## build
docker build -t mongodb-messagebus-test-post:local test/messagebus/post

## run
docker run --cidfile ./cidrefs/mongodb-messagebus-test-post.cid --env TARGET_IP=$TARGET_IP -it mongodb-messagebus-test-post:local 

## run and get a shell
#docker run --cidfile mongodb-messagebus-test.cid --env TARGET_IP=$TARGET_IP -it mongodb-messagebus-test:local /bin/bash

## remove the png so it doesn't get committed in multiple places
rm "./test/messagebus/post/model001.stl"
