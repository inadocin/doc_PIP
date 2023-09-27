set terminal cairoltex standalone pdf size 16cm,10.5cm dashed transparent \
monochorme header monochrome '\newcommand{\hl}[1]{\setlength{\fboxsep}{0.75pt}\colorbox{white}{#1}}'

set label 1 at  50, 250 '\hl{\small $t_\textrm{Nc}$}' center rotate by 45 front

fname = "primer_rend_vol.dat"
set autoscale xfixmin
set autoscale xfixmax

set tics font ",18"
set xlabel "x" font ",18"
set xlabel "y" font ",18"

set lmargin at screen 0.1
set rmargin at screen 0.82
set bmargin at screen 0.12
set tmargin at screen 0.95
plot fname using 1:2
