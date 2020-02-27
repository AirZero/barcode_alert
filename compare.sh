while :
do
read -r response  </dev/tty
	if grep -qi "$response" verrattavat.txt; then
                echo "worked"
		eval $command
		./voice.sh "yes lord";
    fi
done
