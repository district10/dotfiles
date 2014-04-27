#!/bin/bash

in=$1



cat ${in} | \
sed 's///g' \
sed 's///g' \
sed 's///g' \
sed 's///g' \
sed 's///g' \
sed 's///g' \
sed 's///g' \
sed 's///g' \
sed 's///g' \
sed 's///g' \



























tmpA="${in}.tmpA"
tmpB="${in}.tmpB"

trans()
{
 cat ${infile} | tr ${dvpe} ${dvp} > ${outfile}
}


cat ${in} > ${tmpA}

dvpe='i'
dvp='u'
infile="${tmpA}"
outfile="${tmpB}"
trans


dvpe='u'
dvp='i'
infile="${tmpB}"
outfile="${tmpA}"
trans

dvpe='l'
dvp='r'
infile="${tmpA}"
outfile="${tmpB}"
trans

dvpe='r'
dvp='h'
infile="${tmpB}"
outfile="${tmpA}"
trans

dvpe='h'
dvp='k'
infile="${tmpA}"
outfile="${tmpB}"
trans

dvpe='k'
dvp='p'
infile="${tmpB}"
outfile="${tmpA}"
trans

dvpe='p'
dvp="'"
infile="${tmpA}"
outfile="${tmpB}"
trans

dvpe='s'
dvp='n'
infile="${tmpB}"
outfile="${tmpA}"
trans

dvpe='n'
dvp='s'
infile="${tmpA}"
outfile="${tmpB}"
trans

cat ${outfile}

rm -f ${tmpA}
rm -f ${tmpB}
