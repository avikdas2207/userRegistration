#!/bin/bash
shopt -s extglob

echo "welcome to user registration"
read -p "enter email:" email
pat="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,}?(a-zA-Z]{2})>
if [[ $email =~ $pat ]]
then
        echo "email is:" $email
else
        echo "enter valid email"
fi