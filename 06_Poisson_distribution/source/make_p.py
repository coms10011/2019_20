from math import *


class P:

    def __init__(self,lamb):
        self.lamb=lamb

    def lamb_over_r(self,r):
        value=1
        counter=r
        while counter>0:
            value*=self.lamb/counter
            counter-=1
        return value

    def __call__(self,r):
        return self.lamb_over_r(r)*exp(-self.lamb)

r_upper=30
lamb=20.0

p=P(lamb)

c=0.0

for r in range(0,r_upper):
    c+=p(r)
    print r,p(r),c

