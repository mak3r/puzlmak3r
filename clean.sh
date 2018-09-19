#!/bin/bash

## stop the currently running contaner
docker stop $(cat stl-upload.cid)
## remove the cid file
rm ./stl-upload.cid
## Remove all stopped containers
docker rm $(docker ps --filter status=exited -a -q)
## Remove dangling docker images
docker rmi $(docker images -f "dangling=true" -q)
