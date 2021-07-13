MAIN=main
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(MAIN).tex

all:
	$(BUILDTEX)
	$(BIBTEX) $(MAIN)
	$(BUILDTEX)
	$(BUILDTEX)


clean-all:
	rm -f *.log *.aux *.bbl *.blg *.pdf *.idx *.toc *.out *.xml  main-blx.bib 
clean:
	rm -f *.log *.aux *.bbl *.blg *.idx *.toc *.out
