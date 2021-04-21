var1=$1
var2=${var1%_folder/}
var3="${var2}_STRENGTHS"
cd $var1

grep -oi [0-9][0-9]dbm $var2 | sort -n | uniq -c | awk 'BEGIN{OFS=" "; print "Occurances", "Thing"}{print $0, ""}' > $var3
