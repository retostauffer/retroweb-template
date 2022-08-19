



install:
	quarto install extension . --no-prompt

render:
	quarto render .

preview:
	quarto preview .

clean:
	-rm -rf _site

publish:
	make render
	rsync -a _site/* retostauffer:~/html/trash/retroweb
