from math import factorial as fac
from math import pow


def binomial(x, y):
    return fac(x) // fac(y) // fac(x - y)


def p_r(n,r,p):
    return  binomial(n,r)*pow(p,r)*pow(1-p,n-r)



n=30
p=0.75

for r in range(0,n+1):
    print r,p_r(n,r,p)
