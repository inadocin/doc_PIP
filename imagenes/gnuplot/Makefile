##
# Project Title
#
# make ifile=ejemplo data=ejemplo_data
#
# @file
# @version 0.1
#
# gnuplot -c $(ifile).gp $(data).dat $(ifile).tex, esto es si tengo que pasarle
# ifile o y ofile al script de gnuplot

clean: all
	rm -f *.tex *.log *.aux

all:
	gnuplot -c $(ifile).gp
	pdflatex $(ifile).tex

# end
