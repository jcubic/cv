ALL: jakub-jankiewicz-cv.pdf

jakub-jankiewicz-cv-page1.pdf: jakub-jankiewicz-cv-page1.svg
	inkscape -f jakub-jankiewicz-cv-page1.svg -d 300 --export-pdf=jakub-jankiewicz-cv-page1.pdf

jakub-jankiewicz-cv-page2.pdf: jakub-jankiewicz-cv-page2.svg
	inkscape -f jakub-jankiewicz-cv-page2.svg -d 300 --export-pdf=jakub-jankiewicz-cv-page2.pdf

jakub-jankiewicz-cv.pdf: jakub-jankiewicz-cv-page1.pdf jakub-jankiewicz-cv-page2.pdf
	test -s jakub-jankiewicz-cv.pdf && rm jakub-jankiewicz-cv.pdf || true
	pdfmerge jakub-jankiewicz-cv-page{1,2}.pdf jakub-jankiewicz-cv.pdf

upload: jakub-jankiewicz-cv.pdf
	./upload

