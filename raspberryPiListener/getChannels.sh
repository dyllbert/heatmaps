for d in */ ; do
	echo "In $d" 
    cd $d
	data=${d%_folder/}
	grep -oi "[0-9][0-9][0-9][0-9] MHz" $data | sort -n | uniq -c | awk 'BEGIN{OFS=" "; print "Occurances", "Thing"}{print $0, ""}' | column -t  > "${data}_CHANNELS"
	cd ..
done