#!/bin/bash
#检查双破折线【 
echo
while [ -n "$1" ]
do
    case "$1" in
      -a) echo "Found the -a option";;   
      -b) echo "Found the -b option";;   
      -c) echo "Found the -c option";;   
      -d) echo "Found the -d option";; 
      --) shift
	  break;;
       *) echo "$1 is not an option"  
    esac
    shift
done
count=1
for param in $@
do
    echo "Parameter #$count:$param"
    icount=$[ $count + 1 ]
done
