ifile = 'segunda_iter.dat'
ofile = 'segundo_rend_vol.tex'

set terminal tikz standalone color size 5cm,6cm
set termoption dash
set output ofile

set label 1 at 4.1,0.84 "$0.83$" font ',8'
set label 2 at 4,0.831 "" point pt 5 lc 6 ps 1
set label 3 at 2,0.13 "$x_r$" font ',8'
set label 4 at 2,0.79 "$\\eta_v$" font ',8'

set grid lw 1.5
set key off

set autoscale xfixmax

set tics font ",8"
set xlabel "RPM$\\times$1000" font ",11"
set ylabel "" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile using ($1/1000):2 lt 6 lc 6 w lp, \
     ifile using ($1/1000):3 lt 6 lc -1 w lp
