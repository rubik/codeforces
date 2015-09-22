import collections

a, b = [], []
for _ in range(int(input())):
    x, y = map(int, input().split())
    a.append(x)
    b.append(y)
c, d = map(collections.Counter, (a, b))
print(sum(v * d[k] for k, v in c.items() if k in d))
