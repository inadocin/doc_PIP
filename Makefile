main=main
tex=latexmk -pdflatex=lualatex -pdf
bibtex=biber
nomencl=makeindex $(main).nlo -s nomencl.ist -o $(main).nls
buildtex=$(tex) $(main).tex

all:
	$(buildtex)
	$(nomencl)
	$(bibtex) $(main)
	$(buildtex)

clean-all:
	rm -f *.gz *.pdf *.fls *fdb_latexmk *.acn *.aux *.bbl *.bcf *.blg *.glo *.ist *.lof *.log *.lot *.run.xml *.toc *.out *.latexmain
	find . -type f -name *.aux -exec rm -f {} +
	find . -type f -name *.bak -exec rm -f {} +

clean:
	rm -f *.gz *.fls *fdb_latexmk *.acn *.aux *.bbl *.bcf *.blg *.glo *.ist *.lof *.log *.lot *.run.xml *.toc *.out *.olg *.nlo *.nls *.ilg
	find . -type f -name *.aux -exec rm -f {} +
	find . -type f -name *.bak -exec rm -f {} +

open:
	zathura $(main).pdf &
