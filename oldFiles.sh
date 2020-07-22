#!/bin/bash
# -mtime: modified time
# -ctime: creation time
files=$(find . -mtime 10 -name *.txt )
let counter=1
for file in $files; do
    rm file
    echo "$file was deleted!"
    echo $counter
    counter=$counter+1
done