#! /bin/sh

csvcut -n -d "|" ../complete_devicelist.csv
echo "Insert columns you want to hear. For example "1,3,5" without quotation marks. First is 0. So 14 is 13 and so on."

read -r columns </dev/tty

while :
do	echo "Enter barcode"
	read -r response </dev/tty
		response=${respon:2}
		if grep -qi "$response" ../complete_devicelist.csv; then
			grep "$response" ../complete_devicelist.csv|cat|sed 's/^.\{,9\}//'>onedevice.csv;
			#./voice.sh cat onedevice.csv;
			echo "$response" + "found"
	                csvcut -d "|" -c $columns onedevice.csv|espeak -vfi+m1 -m -p 0 -s 110;
		fi
done
