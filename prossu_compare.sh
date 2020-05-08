#! /bin/sh

while :
do
	echo "Enter barcode"
	read -r response </dev/tty
		if grep -qi "$response" prossut.txt; then
			grep "$response" prossut.txt|cat|sed 's/^.\{,9\}//'>info.txt;
			info=$(cat info.txt)
			./voice.sh "$info" ;
                	echo "$worked"
#			eval $command
		fi
done
