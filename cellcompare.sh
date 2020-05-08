#! /bin/sh

while :
do
	echo "Enter barcode"
	read -r response </dev/tty
		if grep -qi "$response" complete_devicelist.csv; then
			grep "$response" complete_devicelist.csv|cat|sed 's/^.\{,9\}//'>onedevice.csv;
			./voice.sh cat onedevice.csv;
                	echo "$worked"
			#echo "$response"
		fi
		csvcut -d "|" -c $1 onedevice.csv|espeak -vfi+m1 -m -p 0 -s 110;
done

