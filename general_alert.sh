#! /bin/sh

while :
do
	#clean_stdin
	echo "Enter barcode"
	read -r response </dev/tty
		echo "$response">>forssa_laitteet.txt
		if grep -qi "$response" ../forssa_halytykset.csv; then
                	echo "worked"
			grep "$response" ../forssa_halytykset.csv|cat|sed 's/^.\{,9\}//'>forssadata.csv;
			#./voice.sh $puhe;
			audio=$(cat forssadata.csv)
			./voice.sh "$audio" ;

		fi
done
