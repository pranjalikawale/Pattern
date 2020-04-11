#!/bin/bash -x

shopt -s extglob
echo "Enter the word ending with thing"
read word

pat=[a-zA-Z]{3}
pat=^[0-9]*
pat=[0-9a-zA-Z]*$
pat="^[0-9]*[a-zA-Z]{3}[0-9a-zA-Z]*$"

if [[ $word =~ $pat ]]
then 
	echo "Valid"
else
	echo "Invalid"
fi

