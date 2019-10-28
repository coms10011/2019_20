
f(x)=x<=-1 ? 0: x<=1 ? (x+1)*0.5:1

set size 0.5,0.5
unset key
set border 3
set xtics nomirror
set ytics nomirror

set xtics (-2,-1,0,1,2)
set ytics (0,0.5,1)
set xrange [-2:2]
set yrange [-0.25:1.25]

plot f(x) w lines ls -1
