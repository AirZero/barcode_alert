#! /bin/sh

while :
do
	echo "Enter barcode"
	read -r response </dev/tty
		if grep -qi "$response" deviceinfo.txt; then
			grep "$response" deviceinfo.txt|cat|sed 's/^.\{,9\}//'>info.txt;
			
			./voice.sh cat info.txt;
                	echo "$worked"
#			eval $command
		fi
done
