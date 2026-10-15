#!/bin/bash
if [ "$#" -lt 3 ]
then
echo "Неправильное количество аргументов"
else

var1=$1
count2=$((($#-1)/2))
count=0

while [ $count != $count2 ]; do
if [ "$count" == 0 ]
then
shift 0
else
shift 2
fi
((count++))

if [ "$2" == "+" ]
then
var1=$(($var1+$3))
fi

if [ "$2" == "-" ]
then
var1=$(($var1-$3))
fi

if [ "$2" == "x" ] || [ "$2" == "X" ]
then
var1=$(($var1*$3))
fi

if [ "$2" == "/" ]
then
if [ $3 == 0 ]
then
var1="Деление на 0"
else
var1=$(($var1/$3))
fi
fi
done

echo $var1
fi
