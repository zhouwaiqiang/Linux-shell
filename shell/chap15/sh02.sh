#!/bin/bash
#creating a temp file in the /tmp
tempfiles=$(mktemp -t tmp.XXXXXX)
echo "This is a test file." > $tempfiles
echo "This is the second line of the test" >> $tempfiles

echo "The temp file is located at:$tempfiles"
cat $tempfiles
rm -f $tempfiles
