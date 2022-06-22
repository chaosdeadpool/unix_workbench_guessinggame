all: README.md

README.md:
	echo "# Workbench project guessinggame" > README.md
	echo "Make was run at `date`" >> README.md
	echo "guessinggame.sh contains `cat guessinggame.sh | wc -l` lines" >> README.md
