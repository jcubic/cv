ALL: jakub-jankiewicz-cv-pl.pdf jakub-jankiewicz-cv-en.pdf

en/jakub-jankiewicz-cv-page1.pdf: en/jakub-jankiewicz-cv-page1.svg portrait.jpg
	inkscape -d 300 --export-type="pdf" --export-filename="en/jakub-jankiewicz-cv-page1.pdf" en/jakub-jankiewicz-cv-page1.svg 2>/dev/null

en/jakub-jankiewicz-cv-page2.pdf: en/jakub-jankiewicz-cv-page2.svg
	inkscape -d 300 --export-type="pdf" --export-filename="en/jakub-jankiewicz-cv-page2.pdf" en/jakub-jankiewicz-cv-page2.svg 2>/dev/null

en/jakub-jankiewicz-cv-page3.pdf: en/jakub-jankiewicz-cv-page3.svg
	inkscape -d 300 --export-type="pdf" --export-filename="en/jakub-jankiewicz-cv-page3.pdf" en/jakub-jankiewicz-cv-page3.svg 2>/dev/null

pl/jakub-jankiewicz-cv-page1.pdf: pl/jakub-jankiewicz-cv-page1.svg portrait.jpg
	inkscape -d 300 --export-type="pdf" --export-filename="pl/jakub-jankiewicz-cv-page1.pdf" pl/jakub-jankiewicz-cv-page1.svg 2>/dev/null

pl/jakub-jankiewicz-cv-page2.pdf: pl/jakub-jankiewicz-cv-page2.svg
	inkscape -d 300 --export-type="pdf" --export-filename="pl/jakub-jankiewicz-cv-page2.pdf" pl/jakub-jankiewicz-cv-page2.svg 2>/dev/null

pl/jakub-jankiewicz-cv-page3.pdf: pl/jakub-jankiewicz-cv-page3.svg
	inkscape -d 300 --export-type="pdf" --export-filename="pl/jakub-jankiewicz-cv-page3.pdf" pl/jakub-jankiewicz-cv-page3.svg 2>/dev/null

jakub-jankiewicz-cv-pl.pdf: pl/jakub-jankiewicz-cv-page1.pdf pl/jakub-jankiewicz-cv-page2.pdf pl/jakub-jankiewicz-cv-page3.pdf
	pdfunite pl/jakub-jankiewicz-cv-page{1,2,3}.pdf jakub-jankiewicz-cv-pl.pdf

jakub-jankiewicz-cv-en.pdf: en/jakub-jankiewicz-cv-page1.pdf en/jakub-jankiewicz-cv-page2.pdf en/jakub-jankiewicz-cv-page3.pdf
	pdfunite en/jakub-jankiewicz-cv-page{1,2,3}.pdf jakub-jankiewicz-cv-en.pdf

.PHONY: upload clean

clean:
	rm pl/jakub-jankiewicz-cv-page{1,2,3}.pdf 2>/dev/null
	rm en/jakub-jankiewicz-cv-page{1,2,3}.pdf 2>/dev/null

upload: jakub-jankiewicz-cv-en.pdf jakub-jankiewicz-cv-pl.pdf
	@./upload

