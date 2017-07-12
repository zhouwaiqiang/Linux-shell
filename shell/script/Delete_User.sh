#!/bin/bash
#Delete_User - Automates the 4 steps to remove an account
function get_answer {
unset ANSWER
ASK_COUNT=0
while [ -z "$ANSWER"]
do
    ASK_COUNT=$[ $ASK_COUNT + 1 ]
    case $ASK_COUNT in
    2)
	echo
	echo "Please answer the question."
	echo
    ;;
    3)
	echo
	echo "One last try...please answer the question."
    ;;
    4)
	echo
	echo "Since you refuse to answer the question..."
	echo "exiting program"
	echo
	exit
    esac
    echo
    if [ -n "$LINE2" ]
    then
	echo $LINE1
	echo -e $LINE2" \c"
    else
	echo -e $LINE1" \c"
    fi
#Allow 60 seconds to answer before time-out
    read -t 60 ANSWER
done
unset LINE1
unset LINE2
}
