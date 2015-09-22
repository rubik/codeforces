n = int(input())
levels = set()
levels.update(map(int, input().split()[1:]))
levels.update(map(int, input().split()[1:]))
if not n*(n + 1) / 2 - sum(levels):
    print('I become the guy.')
else:
    print('Oh, my keyboard!')
