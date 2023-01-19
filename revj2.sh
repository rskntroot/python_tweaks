#!/bin/bash
# not exactly python, but why do something complicated just to find why your j2 aint working

cat $1 | grep -oP "{{[^}]+}}" | sort | uniq | awk '{print $2}'
echo "======"
cat $1 | grep -oP "{%[^%]+%}" | sort | uniq | awk '{print $2}'

#'lost'ju23% 
