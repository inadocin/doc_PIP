ifile = ARG1
ofile = ARG2

set terminal tikz standalone color size 13cm,8cm
set termoption dash
set output ofile

set label 1 at 4000, 185 '177 N.m.' center
set label 2 at 6500, 100 '117 CV' center
set label 3 at 1100, 165 'Torque al freno ' left rotate by 15
set label 4 at 1100, 35 'Potencia al freno' left rotate by 35
set label 5 at 4000, 177 "" point pt 5 lc -1 ps 1.5
set label 6 at 6500, 117 "" point pt 5 lc -1 ps 1.5

set grid lw 1.5
unset key

set yrange [0:200]
set autoscale xfixmax

set tics font ",8"
set xlabel "RPM" font ",11"
set ylabel "$\\dot{W}\\textrm{[CV]}$" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile using 1:6 lt 6 lc -1 w lp, \
     ifile using 1:7 lt 6 lc -1 w lp
