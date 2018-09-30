#!/bin/bash

## stop the currently running contaner
docker stop $(cat ./stl-slicer.cid)
## remove the cid file
rm ./cidrefs/stl-slicer.cid
## Remove all stopped containers
docker rm $(docker ps --filter status=exited -a -q)
## Remove dangling docker images
docker rmi $(docker images -f "dangling=true" -q)
