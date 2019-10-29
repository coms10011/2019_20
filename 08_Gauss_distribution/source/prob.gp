
f(x)=1/sqrt(2*4*atan(1))*exp(-x**2/2)

filter(x,min,max) = (x > min && x < max) ? x : 1/0

set xrange [-4:4]

unset key

set size 0.7,0.7

set border 3

set xtics nomirror
set ytics nomirror

set xtics (0,0.5,1.7)
set ytics (0)

set style fill transparent solid 0.35 noborder
plot '+' using (filter($1,0.5,1.7)):(f($1)) w filledcurves x1 
replot f(x) lt -1