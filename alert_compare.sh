#! /bin/sh

while :
do
	#clean_stdin
	echo "Enter barcode"
	read -r response </dev/tty
		if grep -qi "$response" ../prossu_muisti_ssd.csv; then
                	echo "worked"
			grep "$response" ../prossu_muisti_ssd.csv|cat|sed 's/^.\{,9\}//'>alertdata.csv;
			#./voice.sh $puhe;
		fi
done
