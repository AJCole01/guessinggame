all: README.md

README.md: guessinggame.sh
	echo '# Guessing Game Project' > README.md
	echo 'Made and ran at: `date`' >> README.md
	echo 'Number of lines of code in guessinggame.sh is:' >> README.md
	wc -l guessinggame.sh | egrep -o '[0-9]+' >> README.md

clean:
	rm README.md
