#!/bin/bash
#cat the mail is legal
gawk --re-interval '/^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9_\-\.\+]+)\.([a-zA-Z]{2,5})$/{print $0}'
