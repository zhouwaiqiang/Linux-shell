#!/bin/bash
# send a command to mysql server
#MYSQL=$(which mysql)
mysql mytest -umytest -pmytest -e "select * from employees"
