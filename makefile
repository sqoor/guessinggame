all: readme.md

readme.md:
	touch README.md
	echo "# Guessing Game" >> README.md
	date +"%Y-%m-%d %H:%M:%S" >> README.md
	wc -l guessinggame.sh | egrep -o [0-9]+ >> README.md
		
