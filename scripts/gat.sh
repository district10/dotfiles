#!/bin/bash

# Filename: gat.sh
# Usage : ./script "和"

char=$1

# Change it to your dict path, I use this: https://github.com/district10/dotfiles/tree/master/scripts/data/gat-dict.txt

dict="data/gat-dict.txt"

awk -v value="${char}" '$2 == value {print $1 $2}' "${dict}"
