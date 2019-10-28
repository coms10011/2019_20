

f(x)= abs(x)<1  ? 0.5:1/0
g(x)= abs(x)>=1 ? 0.0:1/0

set xtics (-2,-1,0,1,2)
set ytics (0,0.5,1)
set size 0.5,0.5
unset key
set border 3
set xtics nomirror
set ytics nomirror

set xrange [-2:2]
set yrange [-0.25:1.25]

plot f(x) w lines ls -1
replot g(x) w lines ls -1