#! /bin/sh

while :
do
        #clean_stdin
        echo "Enter barcode"
        read -r response </dev/tty
                if grep -qi "$response" ../ei_inventaariossa.txt; then
                        echo "worked"
#                       eval $command
                        ./voice.sh "hälytyshälytys";
                fi

done

