#!/bin/bash
#从变量读取列表
list="Alabama Alaska Arizona Arkansas Colorado"
list=$list" Connecticut"
for state in $list
do 
    echo "Have you ever visited $state?"
done
