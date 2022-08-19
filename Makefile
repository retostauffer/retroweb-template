



install:
	git submodule add https://github.com/retostauffer/retroweb-ext _extensions/retroweb
	quarto install extension . --no-prompt

render:
	(cd _extensions/retroweb && git pull)
	quarto render .

preview:
	quarto preview .

publish:
	make render
	rsync -a _site/* retostauffer:~/html/trash/retroweb
