#!/bin/bash

# OUtput Style:
#     ➜  scripts git:(master) ✗ ./gat-trans2.sh "我跟你开玩笑干嘛, gat 输入法完虐拼音五笔"
#     {我q}{跟etpt}{你too}{开tnu}{玩teinx}{笑terem}{干etmr}{嘛teiea},gat{输tjv}{入tls}{法eb}{完etci}{虐tenax}{拼teoas}{音tlj}{五etmi}{笔etiy}

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
