#! /bin/sh

while :
do
	echo "Enter barcode"
	read -r response </dev/tty
		if grep -qi "$response" deviceinfo.txt; then
			grep "$response" deviceinfo.txt|cat|sed 's/^.\{,9\}//'>info.txt;
<<<<<<< HEAD
			./voice.sh cat info.txt;
=======
			info=$(cat info.txt)
			./voice.sh "$info" ;
>>>>>>> bd1c33a7254d4275aeaa7f8567a7b7858d26600c
                	echo "$worked"
#			eval $command
		fi
done
