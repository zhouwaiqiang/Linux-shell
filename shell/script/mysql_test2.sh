#!/bin/bash
#sending multiple commands to MySQL
mysql mytest -umytest -pmytest <<EOF
show tables;
select * from employees where salary > 1000;
EOF
