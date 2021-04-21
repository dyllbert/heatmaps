cat $1 | egrep -o '([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})' >> $1_ALL_MACS
cat $1 | egrep -o '([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})' | sort -u >> $1_UNIQUE_MACS

var1=$(wc -l $1_ALL_MACS | awk '{print $1}')
var2=$(wc -l $1_UNIQUE_MACS | awk '{print $1}') 

echo "$var1 Total MACs in $1" >> $1_COUNT
echo "$var2 Unique MACs in $1" >> $1_COUNT

cat $1_COUNT
