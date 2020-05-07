#! /bin/sh

while :
do
	#clean_stdin
	echo "Enter barcode"
	read -r response </dev/tty
		if grep -qi "$response" hyllyssa.txt; then
                	echo "worked"
#			eval $command
			./voice.sh "Tuote löytyy listasta";
		fi
done
