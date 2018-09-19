curl -s $TARGET_IP:4555 -o out.txt 
cmp --silent test-post.txt out.txt; echo $?