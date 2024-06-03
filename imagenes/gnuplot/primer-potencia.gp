ifile = 'primer_rend_vol.dat'
ofile = 'primer-potencia.tex'

set terminal tikz standalone color size 13cm,8cm
set termoption dash
set output ofile

set label 1 at 2, 150 "Torque" right
set label 2 at 1.7, 53 "Potencia" center rotate by 30

set label 3 at 7.5, 185 '177 CV' center font ',8'
set label 4 at 2.0, 200 '191 Nm' right font ',8'
set label 5 at 7.5, 177.8 '' point pt 13 lc -1 ps 1.5
set label 6 at 2.5, 191 '' point pt 13 lc -1 ps 1.5

set grid lw 1.5
set key bottom right

set autoscale xfixmax

set tics font ",8"
set xlabel "RPM$\\times$1000" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile using ($1/1000):4 lt 6 lc 7 w lp t 'indicado', \
     ifile using ($1/1000):5 lt 6 dt 2 lc 7 w lp t '', \
     ifile using ($1/1000):6 lt 6 lc -1 w lp t 'al freno', \
     ifile using ($1/1000):7 lt 6 dt 2 lc -1 w lp t '', \
