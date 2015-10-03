n = int(input())
hor, ver = set(), set()
r = []
for i in range(n**2):
    a, b = map(int, input().split())
    if a not in hor and b not in ver:
        r.append(i + 1)
        hor.add(a)
        ver.add(b)
print(' '.join(map(str, r)))
