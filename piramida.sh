#!/bin/bash
# variant 3
count=$1

echo
while ((count >0)); do
	count2=count
	while ((count2 > 0)); do
		echo -n "* "
		((count2--))
	done
	echo
	count3=$(($1-count+1))
	while ((count3 > 0)); do
	echo -n " "
	((count3--))
	done
	((count--))
done
echo

