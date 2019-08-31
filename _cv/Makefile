MAIN = cv.tex
DOC  = $(MAIN:.tex=.pdf)

.PHONY: $(DOC)
$(DOC): biblio
	latexmk -pdf $(MAIN)
	cp $(DOC) ../cv

continuous: biblio
	latexmk -pdf -pvc $(MAIN)

biblio:
	./makebib.sh

clean:
	latexmk -c $(MAIN)

distclean:
	latexmk -C $(MAIN)
