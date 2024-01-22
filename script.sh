#! /usr/bin/bash
# read file name from input
read -p "Enter input file name: " filename
# read desired password length from input
read -p "Enter password length: " pass_len

# create file for result
touch "result.csv"

# read file
while read line; do
#reading each line and generating password
password="$(pwgen -s -1 $pass_len 1)"
# write to result.csv
echo "$line, $password" >> "result.csv"
done < $filename

# output result.csv
cat "result.csv"