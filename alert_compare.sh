#! /bin/sh

while :
do
	#clean_stdin
	echo "Enter barcode"
	read -r response </dev/tty
		"$response" >> scanned_devices.txt
		if grep -qi "$response" ../prossu_muisti_ssd.csv; then
                	echo "worked"
			grep "$response" ../prossu_muisti_ssd.csv|cat|sed 's/^.\{,9\}//'>alertdata.csv;
			#./voice.sh $puhe;
			audio=$(cat alertdata.csv)
			./voice.sh "$audio" ;

		fi
done
