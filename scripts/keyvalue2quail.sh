#!/bin/bash

from=$1
to=$2

# Add Header
echo '(quail-define-rules' > $to

# Add Body
cat ${from} | awk '{printf " (\"%s\" ?%s)\n", $1, $2}' >> $to

# Add Tail
echo ')' >> $to

# Add Provide
echo -n "(privide '" >> $to
echo -n ${to%.*} >> $to
echo ")" >> $to
