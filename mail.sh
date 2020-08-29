#!/bin/bash
shopt -s extglob

echo "**********mail validation*************"
read -p "enter mail-id: " mail

pat="^([a-z])+[0-9]*[._+-]?[a-zA-Z0-9]+([@]{1})([a-z0-9]{1,})([.]{1})([a-z]{3,})([.]*)([a-z]{2,})*$"

if [[ $mail =~ $pat ]]
then
	echo "valid"
else
	echo "invalid"
fi