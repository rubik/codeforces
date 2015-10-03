_ = input()
ns = map(int, input().split())
c = 0
cur = 0
while True:
    new = []
    for i in ns:
        if i <= cur:
            cur += 1
        else:
            new.append(i)
    if not new:
        break
    ns = reversed(new)
    c += 1
print(c)
