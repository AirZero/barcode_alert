#! /bin/sh

while :
do
	#clean_stdin
	echo "Enter barcode"
	read -r response </dev/tty
		echo "$response">>laitteet.txt
		if grep -qi "$response" ../halytykset.csv; then
                	echo "worked"
			grep "$response" ../halytykset.csv|cat|sed 's/^.\{,9\}//'>data.csv;
			#./voice.sh $puhe;
			audio=$(cat data.csv)
			./voice.sh "$audio" ;

		fi
done
