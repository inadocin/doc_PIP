ifile1 = 'primer_rend_vol.dat'
ifile2 = 'segunda_iter.dat'
ofile = 'comparativa.tex'

set terminal tikz standalone color size 13cm,8cm
set termoption dash
set output ofile

set label 1 at 1.5, 132 "Torque" center rotate by 5
set label 2 at 1.7, 50 "Potencia" center rotate by 26

set label 3 at 7.5, 185 '177 CV' center font ',8'
set label 4 at 2.2, 190 '191 Nm' right font ',8'
set label 5 at 7.5, 177 '' point pt 13 lc 7 ps 1.5
set label 6 at 2.5, 191 '' point pt 13 lc 7 ps 1.5

set label 7 at 4.0, 185 '177 N.m.' center font ',8'
set label 8 at 6.5, 100 '117 CV' center font ',8'
set label 9 at 4.0, 177 "" point pt 5 lc -1 ps 1.5
set label 10 at 6.5, 117 "" point pt 5 lc -1 ps 1.5

set grid lw 1.5
set key bottom right

set autoscale xfixmax

set tics font ",8"
set xlabel "RPM$\\times$" font ",11"
set ylabel "Potencia[CV],Torque[Nm]" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile2 using ($1/1000):6 lt 6 lc -1 w lp t 'segunda iteración', \
     ifile2 using ($1/1000):7 lt 6 lc -1 w lp t '', \
     ifile1 using ($1/1000):6 lt 6 dt 2 lc 7 w lp t 'primer iteración', \
     ifile1 using ($1/1000):7 lt 6 dt 2 lc 7 w lp t ''
