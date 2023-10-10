ifile = 'segunda_iter.dat'
ofile = 'segunda_iter_pot.tex'

set terminal tikz standalone color size 8cm,6cm
set termoption dash
set output ofile

set label 1 at 4.1, 185 '177 N.m.' left font ',8' rotate by -30
set label 2 at 6.5, 100 '117 CV' center font ',8'
set label 3 at 1.1, 165 'Torque' left rotate by 15
set label 4 at 1.1, 35 'Potencia' left rotate by 35
set label 5 at 4.0, 177 "" point pt 5 lc -1 ps 1.5 font ',8'
set label 6 at 6.5, 117 "" point pt 5 lc -1 ps 1.5 font ',8'

set grid lw 1.5
set key bottom right

set autoscale xfixmax

set tics font ",8"
set xlabel "RPM$\\times$1000" font ",11"
set ylabel "Potencia[CV],Torque[Nm]" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95

plot ifile using ($1/1000):4 lt 6 lc 7 w lp t 'indicado', \
     ifile using ($1/1000):5 lt 6 dt 2 lc 7 w lp t '', \
     ifile using ($1/1000):6 lt 6 lc -1 w lp t 'al freno', \
     ifile using ($1/1000):7 lt 6 dt 2 lc -1 w lp t '', \
