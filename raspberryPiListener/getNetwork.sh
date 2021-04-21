BYU_total=0
EDU_total=0
for d in */ ; do
	echo "In $d" #The problem is this will include the slash at the end like this file_name/, which I will need to get rid of to access the data file
	cd $d
	data=${d%_folder/}
	BYU_current=$(grep -i -c "BYU-WiFi" $data)
	echo "Number of BYU-WiFi in $data: $BYU_current" > "${data}_NETWORK"
	EDU_current=$(grep -i -c "eduroam" $data)
	echo "Number of eduroam in $data: $EDU_current" >> "${data}_NETWORK"
	BYU_total=$((BYU_total+BYU_current))
	EDU_total=$((EDU_total+EDU_current))
	cd ..
done

echo "BYU-WiFi $BYU_total" #>> networkTotals
echo "eduoroam $EDU_total" #>> networkTotals
