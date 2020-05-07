#! /bin/sh

while :
do
        #clean_stdin
        echo "Enter barcode"
        read -r response </dev/tty
                if grep -qi "$response" pienissd.txt; then
                        echo "worked"
#                       eval $command
                        ./voice.sh "pieni levy";
                fi
                if grep -qi "$response" lisensiton.txt; then
                        echo "worked"
#                       eval $command
                        ./voice.sh "ei lisenssiä";
                fi

done

