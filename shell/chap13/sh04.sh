#!/bin/bash
#从命令读取值
file="states"
for state in $(cat $file)
do
    echo "Visit beautiful $state"
done
