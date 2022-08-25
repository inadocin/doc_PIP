MAIN=main
# TEX=pdflatex
TEX=latexmk -pdflatex=lualatex -pdf --shell-escape
BIBTEX=biber
NOMENCL=makeindex
BUILDTEX=$(TEX) $(MAIN).tex

all:
	$(BUILDTEX)
	$(BIBTEX) $(MAIN)
	$(BUILDTEX)


clean-all:
	rm -f *.gz *.pdf *.fls *fdb_latexmk *.acn *.aux *.bbl *.bcf *.blg *.glo *.ist *.lof *.log *.lot *.run.xml *.toc *.out *.latexmain
	find . -type f -name *.aux -exec rm -f {} +
	find . -type f -name *.bak -exec rm -f {} +

clean:
	rm -f *.gz *.fls *fdb_latexmk *.acn *.aux *.bbl *.bcf *.blg *.glo *.ist *.lof *.log *.lot *.run.xml *.toc *.out
	find . -type f -name *.aux -exec rm -f {} +
	find . -type f -name *.bak -exec rm -f {} +

open:
	zathura $(MAIN).pdf &
