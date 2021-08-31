MAIN=main
TEX=pdflatex
BIBTEX=biber
NOMENCL=makeindex
BUILDTEX=$(TEX) $(MAIN).tex

all:
	$(BUILDTEX)
	$(BIBTEX) $(MAIN)
	$(BUILDTEX)
	$(BUILDTEX)


clean-all:
	rm -f *.pdf *.acn *.aux *.bbl *.bcf *.blg *.glo *.ist *.lof *.log *.lot *.run.xml *.toc
	find . -type f -name *.aux -exec rm -f {} +
clean:
	rm -f *.acn *.aux *.bbl *.bcf *.blg *.glo *.ist *.lof *.log *.lot *.run.xml *.toc
open:
	zathura $(MAIN).pdf &
