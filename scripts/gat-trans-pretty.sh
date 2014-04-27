#!/bin/bash


# Output Style: 
#               ➜  scripts git:(master) ✗ ./gat-trans-pretty.sh     example.txt 
#               北国风光，千里冰封，万里雪飘。
#               [4mh][r][5tit][5tir]，[3kd][3mx][5sem][4ag]，[4mu][3mx][5sxc][5oss]。
#               望长城内外，惟余莽莽；
#               [5tas][3lk][5rin][3ai][3co]，[5sho][3da][5msx][5msx]；

paragraph=$1 # get char from command line

# Change it to your dict path, I use this: https://github.com/district10/dotfiles/tree/master/scripts/data/gat-dict.txt
dict="data/gat-dict-pretty.txt"

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
	echo $vals
	echo $keys
	vals=""
	keys=""
    fi
done <<<`cat $paragraph`

if [[ $vals == "" ]] ; then :; else echo $vals ; fi
if [[ $keys == "" ]] ; then :; else echo $keys ; fi
