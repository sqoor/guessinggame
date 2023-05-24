file_name=README.md

all: readme.md

readme.md:
	echo "# Title: Guessing Game" > $(file_name)
	echo "- make run at: $$(date "+%Y-%m-%d %H:%M:%S")" >> $(file_name)
	echo "- guessinggame.sh number of lines: $$(wc -l guessinggame.sh | egrep -o [0-9]+)" >> $(file_name)
