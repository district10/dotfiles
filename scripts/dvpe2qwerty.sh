#!/bin/bash

echo qwerty sucks, and this script will not work!
echo "              #####    #   #  ######"
echo "              #    #    # #   #"
echo "              #####      #    #####"
echo "              #    #     #    #"
echo "              #    #     #    #"
echo "              #####      #    ######"
exit









in=$1

tmpA="${in}.tmpA"
tmpB="${in}.tmpB"

trans()
{
 cat ${infile} | tr ${dvp} ${qwerty} > ${outfile}
# head -1 ${outfile}
# echo ${dvp} to ${qwerty} done 
}

#dvp='a'
#qwerty='a' 
#trans

#dvp='m'
#qwerty='m' 
#trans

cat ${in} > ${tmpA}

infile="${tmpA}"
outfile="${tmpB}"
dvp='o'
qwerty='s' 
trans

infile="${tmpB}"
outfile="${tmpA}"
dvp='e'
qwerty='d' 
trans

infile="${tmpA}"
outfile="${tmpB}"
dvp='i'
qwerty='f' 
trans

infile="${tmpB}"
outfile="${tmpA}"
dvp='u'
qwerty='g' 
trans

infile="${tmpA}"
outfile="${tmpB}"
dvp='d'
qwerty='h' 
trans

infile="${tmpB}"
outfile="${tmpA}"
dvp='r'
qwerty='j' 
trans

infile="${tmpA}"
outfile="${tmpB}"
dvp='t'
qwerty='k' 
trans

infile="${tmpB}"
outfile="${tmpA}"
dvp='s'
qwerty='l' 
trans

infile="${tmpA}"
outfile="${tmpB}"
dvp='n'
qwerty=';' 
trans

infile="${tmpB}"
outfile="${tmpA}"
dvp='p'
qwerty='z' 
trans

infile="${tmpA}"
outfile="${tmpB}"
dvp='q'
qwerty='x' 
trans

infile="${tmpB}"
outfile="${tmpA}"
dvp='j'
qwerty='c' 
trans

infile="${tmpA}"
outfile="${tmpB}"
dvp='h'
qwerty='v' 
trans

infile="${tmpB}"
outfile="${tmpA}"
dvp='x'
qwerty='b' 
trans

infile="${tmpA}"
outfile="${tmpB}"
dvp='b'
qwerty='n' 
trans

infile="${tmpB}"
outfile="${tmpA}"
dvp='w'
qwerty=',' 
trans

infile="${tmpA}"
outfile="${tmpB}"
dvp='v'
qwerty='.' 
trans

infile="${tmpB}"
outfile="${tmpA}"
dvp='k'
qwerty='r' 
trans

infile="${tmpA}"
outfile="${tmpB}"
dvp='y'
qwerty='t' 
trans

infile="${tmpB}"
outfile="${tmpA}"
dvp='f'
qwerty='y' 
trans

infile="${tmpA}"
outfile="${tmpB}"
dvp='g'
qwerty='u' 
trans

infile="${tmpB}"
outfile="${tmpA}"
dvp='c'
qwerty='i' 
trans

infile="${tmpA}"
outfile="${tmpB}"
dvp='l'
qwerty='o' 
trans

cat ${tmpB}





# tr 'i' 'f' | \
# tr 'u' 'g' | \
# tr 'd' 'h' | \
# tr 'r' 'j' | \
# tr 't' 'k' | \
# tr 's' 'l' | \
# #tr 'n' ';' | \
# tr 'p' 'z' | \
# tr 'q' 'x' | \
# tr 'j' 'c' | \
# tr 'h' 'v' | \
# tr 'x' 'b' | \
# tr 'b' 'n' | \
# tr 'm' 'm' | \
# #tr 'w' ',' | \
# #tr 'v' '.' | \
# tr 'k' 'r' | \
# tr 'y' 't' | \
# tr 'f' 'y' | \
# tr 'g' 'u' | \
# tr 'c' 'i' | \

