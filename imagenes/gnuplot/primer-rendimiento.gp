ifile = 'primer_rend_vol.dat'
ifile0 = 'primer_rendimiento_ref.dat'
ofile = 'primer-rendimiento.tex'

set terminal tikz standalone color size 13cm,8cm
set termoption dash
set output ofile

set grid lw 1.5

# set label 1 at 1.2,0.7 "Rendimiento volumétrico" left
# set label 2 at 1.2,0.12 "Fracción de gases residuales" left
# set label 3 at 4.3, 0.85 "0.831" center font ',8'
# set label 4 at 8.8, 0.23 "0.2" center font ',8'

set autoscale xfixmax
set key right center
set tics font ",8"
set xlabel "RPM$\\times$1000" font ",11"
set ylabel "" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile using ($1/1000):2 lt 6 lc 6 w lp t "$\eta_v$ actual", \
     ifile0 using ($1/1000):2 lt -1 pi -4 lc 0 w lp t "$\eta_v$ de referencia", \
     ifile using ($1/1000):3 lt 6 lc -1 w lp t "$x_r$ actual", \
     ifile0 using ($1/1000):3 lt -1 pi -4 lc 0 w lp t "$x_r$ de referencia"
