echo '(quail-define-rules' > table-0001-1000.el

head -1000 gat-key-value-6000.txt | awk '{printf " (\"%s\" ?%s)\n", $1, $2}' >> table-0001-1000.el

echo ')' >> table-0001-1000.el

echo "(privide 'table-0001-1000)" >> table-0001-1000.el
