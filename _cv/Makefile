MAIN = cv.tex
DOC  = $(MAIN:.tex=.pdf)

.PHONY: $(DOC)
$(DOC): biblio.tex
	latexmk -pdf $(MAIN)
	cp $(DOC) ../cv

continuous: biblio.tex
	latexmk -pdf -pvc $(MAIN)

clean:
	latexmk -c $(MAIN)

distclean:
	latexmk -C $(MAIN)
