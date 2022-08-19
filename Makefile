



install:
	git submodule add https://github.com/retostauffer/rotorweb-ext _extensions/rotorweb
	quarto install extension . --no-prompt

render:
	(cd _extensions/rotorweb && git pull)
	quarto render .

preview:
	quarto preview .

publish:
	make render
	rsync -a _site/* retostauffer:~/html/trash/rotorweb
