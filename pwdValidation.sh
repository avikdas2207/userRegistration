#!/bin/bash

echo "welcome to user registration"
read -p "enter password:" password
pat="^((?=.*[0-9])(?=.*[A-Z])(?=.*[@#$%]).{8,})$"
if [[ $password =~ $pat ]]
then
        echo "Password is:" $password
else
        echo "enter valid password"
fi