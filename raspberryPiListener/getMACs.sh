#time=$(date +%Y-%m-%d_%H:%M:%S)

data=$1
timeout 4h tcpdump -i wlan0mon -le >> $data
