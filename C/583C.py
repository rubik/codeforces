import fractions
import collections


n = int(input())
ns = sorted((int(i) for i in input().split()), reverse=True)
bs = []
cs = collections.Counter(ns)
r = []
tot = 0
for i in ns:
    if not cs[i]:
        continue
    r.append(i)
    cs[i] -= 1
    for j in bs:
        cs[fractions.gcd(i, j)] -= 2
    bs.append(i)
print(' '.join(map(str, r)))
