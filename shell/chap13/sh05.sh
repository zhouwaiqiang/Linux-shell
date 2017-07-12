#!/bin/bash
#更改字段分隔符
IFS=$`\n`
file="states"
for state in $(cat $file)
do
    echo "Visit beautiful $state"
done
