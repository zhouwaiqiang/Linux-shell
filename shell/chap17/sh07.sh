#!/bin/bash
#trying to pass an array variable
function testit {
    echo "The parameter are:$@"
    thisarray=$1
    echo "The receviived array is ${thisarray[*]}"
}

myarray=(1 2 3 4 5)
echo "The original array is: ${myarray[*]}"
testit $myarray
