ifile = 'comparativa_segunda_iter.dat'
ofile = 'comparativa_segunda_iter_mep.tex'

set terminal tikz standalone color size 13cm,10cm
set termoption dash
set output ofile

set grid lw 1.5
set key bottom right

# set autoscale xfixmax

set multiplot layout 2,2
set tics font ",8"
set key at screen 0.5, 1.05 center vertical height 1 box maxrows 1


set ylabel "$\\eta_{v}$"
set xlabel "RPM$\\times$1000" font ",8"
plot ifile using ($1/1000):2 lt 6 lc 6 w lp t 'run 3-4', \
     ifile using ($1/1000):3 lt 6 lc 7 w lp t 'run 5-4', \
     ifile using ($1/1000):4 lt 6 lc 8 w lp t 'run 9-4', \
     ifile using ($1/1000):5 lt 6 lc 9 w lp t 'run 10-4'

set ylabel "$Pot_{eff}$ [CV]"
plot ifile using ($1/1000):6 lt 6 lc 6 w lp t 'run 3-4', \
     ifile using ($1/1000):7 lt 6 lc 7 w lp t 'run 5-4', \
     ifile using ($1/1000):8 lt 6 lc 8 w lp t 'run 9-4', \
     ifile using ($1/1000):9 lt 6 lc 9 w lp t 'run 10-4'

set ylabel "$Torq_{eff}$ [N.m.]"
plot ifile using ($1/1000):10 lt 6 lc 6 w lp t 'run 3-4', \
     ifile using ($1/1000):11 lt 6 lc 7 w lp t 'run 5-4', \
     ifile using ($1/1000):12 lt 6 lc 8 w lp t 'run 9-4', \
     ifile using ($1/1000):13 lt 6 lc 9 w lp t 'run 10-4'

set ylabel "$xr$"
plot ifile using ($1/1000):14 lt 6 lc 6 w lp t 'run 3-4', \
     ifile using ($1/1000):15 lt 6 lc 7 w lp t 'run 5-4', \
     ifile using ($1/1000):16 lt 6 lc 8 w lp t 'run 9-4', \
     ifile using ($1/1000):17 lt 6 lc 9 w lp t 'run 10-4'
unset multiplot
