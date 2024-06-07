ifile1 = 'puntos_interes_admision.dat'
ifile2 = 'puntos_interes_escape.dat'
ofile = 'puntos_interes.tex'

set terminal tikz standalone color size 15cm,10cm
set termoption dash
set output ofile

set grid lw 1.5

set multiplot layout 2,1
set tics font ",8"
# set key at screen 0.5, 1.05 center vertical height 1 box maxrows 1 font ",8"

set xlabel "$l_v$ [mm]"
set ylabel "$\\Delta P$ [KPa]"

plot ifile1 using 1:2 lt 1 lc 1 w p t '1000 RPM', \
     ifile1 using 1:3 lt 2 lc 2 w p t '2000 RPM', \
     ifile1 using 1:4 lt 3 lc 3 w p t '3000 RPM', \
     ifile1 using 1:5 lt 4 lc 4 w p t '4000 RPM', \

plot ifile2 using 1:2 lt 1 lc 1 w p t '1000 RPM', \
     ifile2 using 1:3 lt 2 lc 2 w p t '2000 RPM', \
     ifile2 using 1:4 lt 3 lc 3 w p t '3000 RPM', \
     ifile2 using 1:5 lt 4 lc 4 w p t '4000 RPM', \
