import string


n = int(input())
if not set(string.ascii_lowercase) - set(input().lower()):
    print('YES')
else:
    print('NO')
