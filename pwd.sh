#!/bin/bash
shopt -s extglob
echo "enter password"
read s

capital=$(echo $s | tr -dc A-Z | wc -c)
lower=$(echo $s | tr -dc a-z | wc -c)
number=$(echo $s | tr -dc 0-9 | wc -c)
char=$(echo $s | tr -dc [^a-zA-Z0-9] | wc -c)

#echo $lower
#echo $capital
#echo $number
#echo $char

total=$(($lower+$capital+$number+$char))

if [[ $capital -ge 1 ]] && [[ $lower -ge 1 ]] && [[ $number -ge 1 ]] && [[ $char -ge 1 ]] && [[ $total -ge 8 ]]
then
	echo "valid password"
else
	echo "not valid"
fi