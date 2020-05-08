#! /bin/sh

while :
do
	echo "Enter barcode"
	read -r response </dev/tty
		if grep -qi "$response" deviceinfo.txt; then
			grep "$response" deviceinfo.txt|cat|sed 's/^.\{,9\}//'>info.txt;
			./voice.sh cat info.txt;
                	echo "$worked"
			echo "$response"
		fi;
		echo "$response";
		IFS=' ' read -r -a array <<< "$response";
#		for arg in "$@"
#		do #echo ${array[\"${arg}"]}
#		done
done

