#! /bin/sh

while :
do
	#clean_stdin
	echo "Enter barcode"
	read -r response </dev/tty
                withoutzeros=$(echo "$response"|sed 's/^.\{,2\}//');
		echo "$response">>laitteet.txt
		if grep -qi "$withoutzeros" ../halytykset.csv; then
                	echo "worked"
			grep "$withoutzeros" ../halytykset.csv|cat|sed 's/^.\{,9\}//'>data.csv;
			#./voice.sh $puhe;
			audio=$(cat data.csv)
			./voice.sh "$audio" ;

		fi
done
