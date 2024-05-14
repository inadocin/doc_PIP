ifile = "rendimiento_aserrado.dat"
ofile = "rendimiento_aserrado.tex"

set terminal tikz standalone color size 13cm,8cm
set termoption dash
set output ofile

set grid lw 1.5
unset key

set mytics

set yrange [0.5:1]
set autoscale xfixmax

set tics font ",8"
set xlabel "Velocidad [RPM]" font ",11"
set ylabel "Rendimiento volumétrico" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile u 1:2 lt 6 lc -1 w lp
