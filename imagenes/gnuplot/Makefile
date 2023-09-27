##
# Project Title
#
# make ifile=ejemplo data=ejemplo_data
#
# @file
# @version 0.1

clean: all
	rm -f *.tex *.log *.aux

all:
	gnuplot -c $(ifile).gp $(data).dat $(ifile).tex
	pdflatex $(ifile).tex

# end
