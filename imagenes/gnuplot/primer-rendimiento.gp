ifile = 'primer_rend_vol.dat'
ofile = 'primer-rendimiento.tex'

set terminal tikz standalone color size 6cm,5cm
set termoption dash
set output ofile

set grid lw 1.5
set key center right

set autoscale xfixmax

set tics font ",8"
set xlabel "RPM$\\times$1000" font ",11"
set ylabel "" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile using ($1/1000):2 lt 6 lc 6 w lp t '$\eta_v$', \
     ifile using ($1/1000):3 lt 6 lc -1 w lp t '$x_r$'
