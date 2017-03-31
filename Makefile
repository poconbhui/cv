cv.pdf: cv.tex
	pdflatex cv.tex && \
	pdflatex cv.tex

.PHONY: clean
clean:
	rm cv.pdf cv.aux cv.log cv.out

# Update gh-pages site
.PHONY: site
site:
	git stash && \
	git checkout gh-pages && \
	git checkout master cv.pdf && \
	{ git add cv.pdf && \
	  git commit -m "Updated CV." && \
	  git push origin gh-pages; \
	  true; \
	} && \
	git checkout master && \
	git stash pop
