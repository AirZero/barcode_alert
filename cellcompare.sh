#! /bin/sh

while :
do
	echo "Enter barcode"
	read -r response </dev/tty
		if grep -qi "$response" deviceinfo.txt; then
			grep "$response" deviceinfo.txt|cat|sed 's/^.\{,9\}//'>onedevice.csv;
			./voice.sh cat onedevice.csv;
                	echo "$worked"
			echo "$response"
		fi
		arguments=$1","$2","$3","$4","$5","$6","$7","$8","$9","$10","$11","$12","$13","$14","$15","$16","$17","$18","$19","$20","$21","$22","$23","$24
		csvcut -d "|" -c $arguments onedevice.csv|espeak-ng
done

