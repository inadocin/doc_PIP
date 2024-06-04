ifile = 'cd_vs_alzada.dat'
ofile = 'cd_vs_alzada_adm.tex'

set terminal tikz standalone color size 15cm,7cm
set termoption dash
set output ofile

set grid lw 1.5
# unset key

# set lmargin at screen 0.05
# set rmargin at screen 0.95
# set bmargin at screen 0.05
# set tmargin at screen 0.95

unset key
set multiplot layout 1,2
set tics font ",8"
set ylabel "$C_{D}$ Admisión"
set xlabel "$l_v [mm]$"
plot ifile u ($4*1000):6  w p lc "blue" t "Admisión"
unset ylabel
set xlabel "$\\Delta P [kPa]$"
plot ifile u ($5/1000):6  w p lc "blue" t "Admisión"
unset multiplot
