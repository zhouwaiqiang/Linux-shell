#!/bin/bash
#参数总会统计
if [ $# -ne 2 ]
then
    echo "Usage: test9.sh a b"
else
    total=$[ $1 + $2 ]
    echo "sum is:$total"
fi
