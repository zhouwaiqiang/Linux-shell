#!/bin/bash
#test命令行参数
factorial=1
for ((i = 1; i <= $1; i++))
do
    factorial=$[ $factorial * $i]
done
echo "The result is $factorial"
