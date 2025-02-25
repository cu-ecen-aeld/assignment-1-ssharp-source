#!/bin/bash

#--- check input---
if [ $# -ne 2 ]; then
echo "Error 2 args required <file_path> and <write_string>"
exit 1
fi

writefile=$1
write_string=$2

#--make dir path if dne
mkdir -p "$(dirname "$writefile")"

if ! echo "$write_string" > "$writefile"; then
  echo "Error: could not make or wirte file '$writefile'"
  exit 1
fi

echo "success, wrote to '$writefile'"
