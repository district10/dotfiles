#!/bin/bash

in=$1

cat ${in} | \
tr "iukhrl" "uipkhr"


