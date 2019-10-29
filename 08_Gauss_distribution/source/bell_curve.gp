
f(x)=1/sqrt(2*4*atan(1))*exp(-x**2/2)

set xrange [-4:4]

unset key

set size 0.7,0.7

set border 3

set xtics nomirror
set ytics nomirror

plot f(x)