SHELL := /bin/bash

ALL: jakub-jankiewicz-cv-pl.pdf jakub-jankiewicz-cv-en.pdf

jakub-jankiewicz-cv-pl.pdf: cv.pl.md style.css pl.css Makefile
	pandoc cv.pl.md -o jakub-jankiewicz-cv-pl.pdf --pdf-engine=weasyprint --css=style.css --css=pl.css 2> /dev/null

jakub-jankiewicz-cv-en.pdf: cv.en.md style.css Makefile
	pandoc cv.en.md -o jakub-jankiewicz-cv-en.pdf --pdf-engine=weasyprint --css=style.css 2> /dev/null

.PHONY: upload clean

upload: jakub-jankiewicz-cv-en.pdf jakub-jankiewicz-cv-pl.pdf
	@./upload

