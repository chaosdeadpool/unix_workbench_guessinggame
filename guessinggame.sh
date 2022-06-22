#!/usr/bin/env bash

guessing () {
echo "Please enter your guess:"
read guess
}

#Store number of files in current directory in num_files
num_files=$(ls -l | grep '^-' | wc -l)

#Intialize guess to 0
guess=0

echo "Game is to guess how many files are in the current directory."

while [[ $num_files -ne $guess ]]
do
	guessing
	if [[ $num_files -gt $guess ]]
	then
		echo "Guess is too low"
	elif [[ $num_files -lt $guess ]]
	then
		echo "Guess is too high"
	elif [[ $num_files -eq $guess ]]
	then
		echo "Congratulations, your guess is correct. The number of files is $guess."
	fi
done
