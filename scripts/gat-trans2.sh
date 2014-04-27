#!/bin/bash

# [ $# -eq 0 ] && { echo "Usage: $0 <要搜的字/词语等> "; }

chars=$1 # get char from command line

# Change it to your dict path, I use this: https://github.com/district10/dotfiles/tree/master/scripts/data/gat-dict.txt
dict="data/gat-dict.txt"

code=""

while read -r -n1 char
do
    key_val=`awk -v value="${char}" '$2 == value {printf "%s,%s", $2, $1}' "${dict}"`
    key=`cut -d ',' -f2 <<<"${key_val}"`
    val=`cut -d ',' -f1 <<<"${key_val}"`
    if [[ $key == $val ]] 
    then
	echo -n ${char}
    else
	echo -n {${val}${key}}
    fi
done <<<"$chars"

echo ""
