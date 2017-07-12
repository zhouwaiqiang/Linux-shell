#!/bin/bash
#send data to the table in the MySQL database
MYSQL="mysql"
echo $MYSQL
if [ $# -ne 4 ]
then
    echo "Usage:mysql_test3 empid lastname firstname salary"
else
    statement="INSERT INTO employees VALUES('$1','$2','$3','$4')"
    $MYSQL mytest -umytest -pmytest <<EOF
    $statement
EOF
    if [ $? -eq 0 ]
    then
	echo "Data successfully added"
    else
	echo "problem adding data"
    fi
fi
