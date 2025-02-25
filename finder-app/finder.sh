#!/bin/bash

# ---good idea to check inputs---
if [ $# -ne 2 ]; then
        echo "Error both <dir> <search string> required"
        exit 1
fi

filedir=$1;
search_string=$2

#--check if the first arg is real--
if [ ! -d "$filedir" ]; then
        echo  "Error not a valid directory"
        exit 1
fi

#---cout files in dir

file_count=$( find "$filedir" -type f | wc -l)

#--- count leverages word count wc with option of line -l count.. redirects erorrs to null
match_count=$(grep -r "$search_string" "$filedir" 2>/dev/null | wc -l)

echo "The number of files are $file_count and the number of matching lines are $match_count"
