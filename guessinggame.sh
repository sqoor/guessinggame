#!/usr/bin/env bash
# File: guessinggame.sh

function guess_files {
	while [[ 1 ]]
	do
		echo "Guess the number of files in the dirctory: "
		read user_input

		files_count=$(ls -l | grep "^-" | wc -l)
		
		if [[ $files_count -eq $user_input ]]
		then 
			echo "Congradulations! you guessed correctly"
			break
		elif [[ $files_count -lt $user_input ]]
		then
			echo "Too High!"
		else
			echo "Too Low!"
		fi
	done
}

guess_files
