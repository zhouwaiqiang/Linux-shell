#!/bin/bash
#array variable to function test
function testit {
    local newarray
    newarray=($(echo "$@"))
    echo "The new Array value is: ${newarray[*]}"
}

myarray=(1 2 3 4 5)
echo "The origin array is ${myarray[*]}"
testit ${myarray[*]}
