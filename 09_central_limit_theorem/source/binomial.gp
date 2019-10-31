set size 0.7,0.7
set ytics (0,0.025,0.05,0.075,0.1,0.125,0.15)
set xrange [0:18]

plot 'n100p0.25.txt' using 1:2 w boxes title "$p$=0.25"

n=30
sigma=sqrt(n*0.25*0.75)
mu=0.25*n

f(x)= 1/sqrt(2*(4*atan(1))*sigma*sigma)*exp(-(x-mu)**2/(2*sigma**2))

replot 'n100p0.25.txt' using 1:(f($1)) w lines title "gaussian"

