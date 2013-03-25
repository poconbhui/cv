cv.pdf:
	pdflatex cv.tex

.PHONY: clean
clean:
	rm cv.pdf cv.aux cv.log cv.out
