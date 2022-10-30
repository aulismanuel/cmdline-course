#! /bin/bash

sed -E 's/[A-Z]/[a-z]/'

cat $1 |
tr -s '[:space:]' '\n' |
tr -d '[:punct:]' |
sort | 
uniq -c | 
sort -nr > $2
