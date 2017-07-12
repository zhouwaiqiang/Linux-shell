#!/bin/bash
#移动变量
echo
count=1
while [ -n "$1" ]
do
    echo "Parameter #$count = $1 "
    count=$[ $count + 1 ]
    shift
done
