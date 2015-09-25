n, l = map(int, input().split())
lanterns = sorted(map(int, input().split()))
distances = {(v - lanterns[i - 1]) / 2 for i, v in enumerate(lanterns[1:], 1)}
distances.add(lanterns[0] - 0)
distances.add(l - lanterns[-1])
print(max(distances))
