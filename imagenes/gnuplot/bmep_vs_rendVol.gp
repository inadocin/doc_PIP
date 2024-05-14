ifile = "bmep_vs_rendVol.dat"
ofile = "bmep_vs_rendVol.tex"

set terminal tikz standalone color size 13cm,8cm
set termoption dash
set output ofile

set grid lw 1.5
set key top right

set autoscale xfixmax

set tics font ",8"
set xlabel "RPM" font ",11"

set y2tics
set ylabel 'Rendimiento Volumétrico'
set y2label 'bmep [kPa]'

set yrange [0.4:1.1]
set y2range [400:1100]

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95

plot ifile u 1:2 lt 6 lc 6 w lp t "$\\eta_v$", ifile u 1:4 lt 6 lc -1 w lp t "bmep" axes x1y2
