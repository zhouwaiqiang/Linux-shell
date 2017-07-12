#!/bin/bash
#查找选项
echo 
while [ -n "$1" ]
do
    case "$1" in
      -a) echo "Found the -a option" ;;
      -b) echo "Found the -b option" ;;
      -c) echo "Found the -c option" ;;
      -d) echo "Found the -d option" ;;
       *) echo "$1 is not an option" ;;
    esac
    shift
done
