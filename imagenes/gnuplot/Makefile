##
# Project Title
#
# make ifile=ejemplo data=ejemplo_data
#
# @file
# @version 0.1
#
# cambiar los nombres de entreda y salida de abajo para que coincidan con lo que
# esta en el script de gnuplot que se esta ejecutando. Tiene que coincidir el .tex

clean: all
	rm -f *.tex *.log *.aux

all:
	gnuplot -c cd_vs_alzada_esc.gp
	pdflatex cd_vs_alzada_esc.tex
