#! /bin/bash

find /u -iname "*.xls" >/u/dev-mc/free-disk-space/$(date +%d%m%Y)_file_xls.txt

while IFS= read -r line; do
  IFS='/'
  read -a strarr <<<"$line"
  rm -f "$line"
done </u/dev-mc/free-disk-space/$(date +%d%m%Y)_file_xls.txt
