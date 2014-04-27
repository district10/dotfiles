#!/bin/bash

# OUtput Style:
#          ➜  scripts git:(master) ✗ ./gat-trans-pretty2.sh "我跟你开玩笑干嘛, gat 输入法完虐拼音五笔"
#          {我q}{跟4pt}{你3oo}{开3nu}{玩5inx}{笑5rem}{干4mr}{嘛5iea},gat{输3jv}{入3ls}{法2b}{完4ci}{虐5nax}{拼5oas}{音3lj}{五4mi}{笔4iy}

# [ $# -eq 0 ] && { echo "Usage: $0 <要搜的字/词语等> "; }

chars=$1 # get char from command line

# Change it to your dict path, I use this: https://github.com/district10/dotfiles/tree/master/scripts/data/gat-dict.txt
dict="data/gat-dict-pretty.txt"

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
