#!/bin/bash

filename=$1

while read -r -n1 char
do
  echo -n `./gat-search.sh $char`
done < "$filename"
