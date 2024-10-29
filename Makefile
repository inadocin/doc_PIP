tex=pdflatex
main=main
latexmk=latexmk -pdf -pdflatex=$(tex) -bibtex -use-make $(main).tex

all:
	$(latexmk)

clean:
	$(latexmk) -c

open:
	zathura $(main).pdf &
