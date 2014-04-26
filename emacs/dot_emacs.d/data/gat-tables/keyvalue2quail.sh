from="gat-key-value-6000.txt"

#table="table-0001-1000.el"
#table="table-0001-6000.el"
table="table-0001-4000.el"


# header
echo '(quail-define-rules' > ${table}

# body
# head -1000 ${from} | awk '{printf " (\"%s\" ?%s)\n", $1, $2}' >> ${table}
# head -6000 ${from} | awk '{printf " (\"%s\" ?%s)\n", $1, $2}' >> ${table}
head -4000 ${from} | awk '{printf " (\"%s\" ?%s)\n", $1, $2}' >> ${table}

# tail
echo ')' >> ${table}

#echo "(privide 'table-0001-1000)" >> ${table}
#echo "(privide 'table-0001-6000)" >> ${table}
echo "(privide 'table-0001-4000)" >> ${table}

