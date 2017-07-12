#!/bin/bash
#用通配符遍历整个目录
for file in /opt/*
do
    if [ -d "$file" ]
    then
	echo "$file is a directory"
    elif [ -f "$file" ]
    then
	echo "$file is a file"
    fi
done
