ifile = "vol.dat"
ofile = "vol.pdf"

set terminal tikz standalone color size 13cm,8cm
set termoption dash
set output ofile

# set label 1 at 4000, 185 '177 N.m.' center
# set label 2 at 6500, 100 '117 CV' center
# set label 3 at 1100, 165 'Torque al freno ' left rotate by 15
# set label 4 at 1100, 35 'Potencia al freno' left rotate by 35
# set label 5 at 4000, 177 "" point pt 5 lc -1 ps 1.5
# set label 6 at 6500, 117 "" point pt 5 lc -1 ps 1.5

set label 1 at 300, 40 'Volumen Constante' center font ',7'
set label 2 at 267, 70 'Inicio Combustión $\simeq 267^{\circ}$' left font ',7' rotate by 60
set label 3 at 267, 62 '' point pt 13 lc 7 ps 1.5

set grid lw 1.5
unset key

set yrange [0:550]
set autoscale xfixmax

set tics font ",8"
set xlabel "Ángulo [Grados]" font ",11"
set ylabel "Volumen [$cm^3$]" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile u 1:($2/1000) lc -1 w l
