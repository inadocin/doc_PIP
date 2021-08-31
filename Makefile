MAIN=main
TEX=pdflatex
BIBTEX=biber
NOMENCL=makeindex
BUILDTEX=$(TEX) $(MAIN).tex

all:
	$(BUILDTEX)
	$(NOMENCL) $(MAIN).nlo -s nomencl.ist -o $(MAIN).nls
	$(BUILDTEX)
	$(BIBTEX) $(MAIN)
	$(BUILDTEX)
	$(BUILDTEX)


clean-all:
	rm -f *.log *.aux *.bcf *.bbl *.blg *.pdf *.idx *.toc *.out *.xml  main-blx.bib 
clean:
	rm -f *.log *.aux *.bbl *.blg *.idx *.toc *.out
open:
	zathura $(MAIN).pdf &
