#! /bin/sh

while :
do
	#clean_stdin
	echo "Enter barcode"
	read -r response </dev/tty
                withoutzeros=$(echo "$response"|sed 's/^.\{,2\}//');
		#echo "$response">>alinlava.txt
		if grep -qi "$withoutzeros" ../kadonnut.csv; then
                	echo "worked"
			grep "$withoutzeros" ../kadonnut.csv|cat|sed 's/^.\{,9\}//'>data.csv;
			#./voice.sh $puhe;
			audio=$(cat data.csv)
			./voice.sh "$audio" ;

		fi
done
