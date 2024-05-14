ifile = 'segunda_iter.dat'
ofile = 'segunda_iter_mep.tex'

set terminal tikz standalone color size 13cm,8cm
set termoption dash
set output ofile

# set label 1 at 4.3, 195 '195 N.m.' left font ',8'
# set label 2 at 6.5, 125 '142 CV' center font ',8'
# set label 3 at 1.1, 193 'Torque [Nm]' left font ',8'
# set label 4 at 1.3, 46 'Potencia [CV]' left rotate by 38 font ',8'
# set label 5 at 4.0, 195 "" point pt 5 lc -1 ps 1.5 font ',8'
# set label 6 at 6.5, 142 "" point pt 5 lc -1 ps 1.5 font ',8'

set grid lw 1.5
set key bottom right

set autoscale xfixmax

set tics font ",8"
set xlabel "RPM$\\times$1000" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95

plot ifile using ($1/1000):11 lt 6 lc 7 w lp t 'fmep', \
     ifile using ($1/1000):13 lt 6 lc -1 w lp t 'potencia fricción', \
