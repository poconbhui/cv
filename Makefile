cv.pdf: cv.tex
	pdflatex cv.tex

.PHONY: clean
clean:
	rm cv.pdf cv.aux cv.log cv.out
