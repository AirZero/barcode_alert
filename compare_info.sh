#! /bin/sh

while :
do
	echo "Enter barcode"
	read -r response </dev/tty
		if grep -qi "$response" deviceinfo.txt; then
			grep -qi $response deviceinfo.txt |sed 's/^.\{,7\}//'|./voice.sh
                	echo "worked"
#			eval $command
		fi
done
