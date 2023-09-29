ifile = ARG1
ofile = ARG2

set terminal tikz standalone color size 13cm,8cm
set termoption dash
set output ofile

set label 1 at 150, 9 'Compresión' rotate by -9 font ',7'
set label 2 at 80, 60 'Expansisón' rotate by -68 font ',7'
set label 3 at 50, 4 'Admisión/Escape' font ',7'
set label 4 at 62, 18.5 '' point pt 13 lc 7 ps 1.5
set label 5 at 62, 18.5 'Combustión' font ',7'

set grid lw 1.5
unset key

set yrange [0:90]
set xrange [0:550]

set tics font ",8"
set xlabel "Volumen [$cm^3$]" font ",11"
set ylabel "Presión [bar]" font ",11"

set lmargin at screen 0.05
set rmargin at screen 0.95
set bmargin at screen 0.05
set tmargin at screen 0.95
plot ifile u 1:2 lc -1 w l
