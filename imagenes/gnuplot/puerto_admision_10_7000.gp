ifile = 'puerto_admision_10_7000.dat'
ofile = 'puerto_admision_10_7000.tex'

set terminal tikz standalone color size 13cm,8cm
set termoption dash
set output ofile


set grid lw 1.5
unset key

set autoscale xfixmax

set tics font ",8"
set ylabel '$\dot{Q} [m^{3}/seg]$' font ",11"
set xlabel 'Tiempo de simulación $[mseg]$' font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile using ($1*1000):2 lt 6 lc 7 w l
