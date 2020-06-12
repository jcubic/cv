ALL: jakub-jankiewicz-cv.pdf

jakub-jankiewicz-cv-page1.pdf: jakub-jankiewicz-cv-page1.svg
	inkscape -d 300 --export-type="pdf" jakub-jankiewicz-cv-page1.svg 2>/dev/null

jakub-jankiewicz-cv-page2.pdf: jakub-jankiewicz-cv-page2.svg
	inkscape -d 300 --export-type="pdf" jakub-jankiewicz-cv-page2.svg 2>/dev/null

jakub-jankiewicz-cv.pdf: jakub-jankiewicz-cv-page1.pdf jakub-jankiewicz-cv-page2.pdf
	test -s jakub-jankiewicz-cv.pdf && rm jakub-jankiewicz-cv.pdf || true
	pdfmerge jakub-jankiewicz-cv-page{1,2}.pdf jakub-jankiewicz-cv.pdf

.PHONY: upload

upload: jakub-jankiewicz-cv.pdf
	@./upload

