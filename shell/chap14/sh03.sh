#!/bin/bash
#测试参数
if [ -n "$1" ]
then
    echo "Hello $1, glad to meet you"
else
    echo "you don't identify yourself"
fi
