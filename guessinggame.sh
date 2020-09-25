#!/usr/bin/env bash

# File: guessinggame.sh

num_lines=$( ls | wc -1)
guess=0

function guess_lines {
if [[$guess -lt $num_lines ]]
then
	echo 'Your guess is lower than the amount of files.'
elif [[ $guess -gt $num_lines ]]
then
	echo 'Your guess is higher than the amount of files.'
else
	'You guessed correctly!'
fi
}

while [[ $num_lines -ne $guess ]]
do
	echo 'Pick a guess of how many files are in the current directory.'
	read guess
	echo $(guess_lines)
	echo ''
done
