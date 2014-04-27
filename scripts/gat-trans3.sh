#!/bin/bash

# Use this script to generate a dictionary
#        ➜  scripts git:(master) ✗ ./gat-trans3.sh  demo.txt
#        中国 [m][r]
#        美国 [tli][r]
#        发展 [ex][tsm]

paragraph=$1 # get char from command line

# Change it to your dict path, I use this: https://github.com/district10/dotfiles/tree/master/scripts/data/gat-dict.txt
dict="data/gat-dict.txt"

keys=""
vals=""

while read -r -n1 char
do
    key_val=`awk -v value="${char}" '$2 == value {printf "%s,%s", $2, $1}' "${dict}"`
    val=`cut -d ',' -f1 <<<"$key_val"`
    key=`cut -d ',' -f2 <<<"$key_val"`

    if [[ $key  == $val ]] # no match, so it will be punctuations, etc
    then
	keys="${keys}${char}"
	vals="${vals}${char}"
    else
	keys="${keys}[${key}]"
	vals="${vals}${val}"
    fi

    if [[ $char == `echo ""` ]] # match new line
    then
	echo ${vals} ${keys}
	vals=""
	keys=""
    fi
done <<<`cat $paragraph`

if [[ $vals == "" ]] ; then :; else echo $vals ; fi
if [[ $keys == "" ]] ; then :; else echo $keys ; fi
