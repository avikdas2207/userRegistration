#!/bin/bash

echo "welcome to user registration"
read -p "enter first name:" fname
pat="^[[:upper:]]{1}[[:lower:]]{2,}$"
if [[ $fname =~ $pat ]]
then
        echo "first name is:" $fname
else
        echo "enter valid name"
fi