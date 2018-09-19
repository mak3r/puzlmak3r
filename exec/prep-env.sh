#!/bin/bash

# A script to initialze the docker machine on a mac 
# Needs to be run in any new shell for a given project
# Run with -D flag for DONT RESTART the docker-machine

RESTART=0

while getopts ":D" opt; do
  case $opt in
    D)
      echo "Mode - eval only don't restart docker-machine"
      RESTART=1
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

if [ $RESTART -eq 0 ]
then
  docker-machine restart
fi

eval $(docker-machine env)