#!/bin/bash
# reading SQL output to a variable
MYSQL="mysql"
dbs=$($MYSQL mytest -umytest -pmytest -Bse 'show databases')
for db in $dbs
do
    echo $db
done
