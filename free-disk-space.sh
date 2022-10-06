#! /bin/bash

find /u  -iname "*.xls"  > /u/dev-mc/free-disk-space/$(date +%d%m%Y)_file_xls.txt

while IFS= read -r line
do
  IFS='/'
  read -a strarr <<< "$line"
  #echo "$line"
  #cp "$line" /u/dev-mc/${strarr[2]}.xls
  rm -f /u/dev-mc/${strarr[2]}.xls
done < /u/dev-mc/free-disk-space/$(date +%d%m%Y)_file_xls.txt


