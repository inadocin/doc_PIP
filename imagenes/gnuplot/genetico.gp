ifile = "genetico.dat"
ofile = "genetico.tex"

set terminal tikz standalone color size 6cm,5cm
set termoption dash
set output ofile

set grid lw 1.5
set key bottom right

set autoscale xfixmax

set tics font ",8"
set xlabel "Generación" font ",11"
set ylabel "Puntaje" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile u 1:2 lt 6 lc 6 w lp t 'Máximo', ifile u 1:3 lt 6 lc -1 w lp t 'Media'
