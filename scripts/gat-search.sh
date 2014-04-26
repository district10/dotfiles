#!/bin/bash

# [ $# -eq 0 ] && { echo "Usage: $0 <要搜的字> "; }

char=$1 # get char from command line

# Change it to your dict path, I use this: https://github.com/district10/dotfiles/tree/master/scripts/data/gat-dict.txt
dict="data/gat-dict.txt"

awk -v value="${char}" '$2 == value {printf "{%s,%s}", $2, $1}' "${dict}"
