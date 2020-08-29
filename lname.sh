#!/bin/bash

echo "welcome to user registration"
read -p "enter last name:" lname
pat="^[[:upper:]]{1}[[:lower:]]{2,}$"
if [[ $lname =~ $pat ]]
then
        echo "first name is:" $lname
else
        echo "enter valid name"
fi