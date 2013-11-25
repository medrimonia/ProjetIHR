#!/usr/bin/python3

import math
t1 = 1#val(e) = +
t2 = 2#val(e) = +
t3 = 3#val(e) = -

def score(dt):
    return math.e ** (-math.sqrt(dt))

def casPossible(k):
    casPossible = 3 * k
    if (t > t1):
        casPossible += score(t - t1)
    if (t > t2):
        casPossible += score(t - t2)
    if (t > t3):
        casPossible += score(t - t3)
    return casPossible

#p(val = -)
def p(t, k):
    casFavorable = k
    if (t > t3):
        casFavorable += score(t - t3)
    return casFavorable / casPossible(k)

#p(val = +)
def p2(t,k):
    casFavorable = k
    if (t > t1):
        casFavorable += score(t - t1)
    if (t > t2):
        casFavorable += score(t - t2)
    return casFavorable / casPossible(k)

#p(val = None)
def p3(t,k):
    casFavorable = k
    return casFavorable / casPossible(k)

k = 0.1
timeToWatch = 100
for dixT in range(0, 10 * timeToWatch, 1):
    t = dixT / 10
    print(t, p(t, k), p2(t,k), p3(t,k))
