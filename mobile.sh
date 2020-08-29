#!/bin/bash

echo "welcome to user registration"

read -p "enter mobileNumber:" mobileNumber
pat="^((\+){1}91{1}[789]{1}[0-9]{9}$"

if [[ $mobileNumber =~ $pat ]]
then
        echo "Number is:" $mobileNumber
else
        echo "enter valid number"
fi