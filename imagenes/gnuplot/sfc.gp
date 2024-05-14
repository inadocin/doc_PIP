ifile = 'segunda_iter.dat'
ofile = 'sfc.tex'

set terminal tikz standalone color size 13cm,8cm
set termoption dash
set output ofile

set label 1 at 3,115 "$118$" font ',8'
set label 2 at 3,118 "" point pt 5 lc 7 ps 1.5
set label 3 at 3,128 "$125$" font ',8'
set label 4 at 3,125 "" point pt 5 lc -1 ps 1.5
set label 5 at 8.5,173 "$171$" font ',8'
set label 6 at 9,171 "" point pt 5 lc -1 ps 1.5
set label 7 at 8.5,155 "$153$" font ',8'
set label 8 at 9,153 "" point pt 5 lc 7 ps 1.5

set grid lw 1.5
set key top left

set autoscale xfixmax

set tics font ",8"
set xlabel "RPM$\\times$1000" font ",11"
set ylabel "consumo específico de combustible [g/kW h]" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile using ($1/1000):8 lt 6 lc 7 w lp t 'indicado neto', \
     ifile using ($1/1000):9 lt 6 lc -1 w lp t 'al freno'
