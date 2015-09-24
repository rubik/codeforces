import itertools


def line(i):
    return itertools.chain(range(i), range(i, -1, -1))


def format(n, i):
    return ' '.join(map(str, line(i))).rjust(2*(n + i) + 1)


n = int(input())
print('\n'.join(format(n, i) for i in line(n)))
