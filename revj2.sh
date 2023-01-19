#!/bin/bash
# not exactly python, but why do something complicated just to find why your j2 aint working

echo "== base =="
cat $1 | grep -oP "{{[^}]+}}" | sort | uniq | awk '{print $2}'
echo "== if =="
cat $1 | grep -oP "{%[^%]+%}" | sort | uniq | grep -oP "(?<=if\s)[^%\s]+"
echo "== for =="
cat $1 | grep -oP "{%[^%]+%}" | sort | uniq | grep -oP "(?<=for\s)[^%]+"

# meh, i ended up over doing it anyway

#'lost'ju23%
