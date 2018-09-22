#!/bin/bash

curl --form 'file=@./$POST_TEST_IMAGE' $TARGET_IP:4555/upload
#cmp --silent test-post.txt out.txt; echo $?