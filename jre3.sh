#!/bin/bash

### USAGE ###
# jre3 [lesson number, L] [question number, Q]
# "L-Q.c" in current directory will be submitted and checked
#     eg. "jre3 1 3" to submit and check "1-3.c"
# question number = 0 : showing submission status

# Your class
CLASS=1

LESSON="$1"
DIR="/ced-home/staff/21jr3"

if (($1 < 10)); then
    LESSON="0$1"
fi

if (($2 == 0)); then
    eval "$DIR/$LESSON/checker$CLASS"
else
    eval "$DIR/$LESSON/checker$CLASS $2 $1-$2.c"
fi