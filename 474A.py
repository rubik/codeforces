KEYBOARD = 'qwertyuiopasdfghjkl;zxcvbnm,./'
MOVES = {
    'R': str.maketrans(KEYBOARD[1:], KEYBOARD[:-1]),
    'L': str.maketrans(KEYBOARD[:-1], KEYBOARD[1:])
}

direction = MOVES[input()]
print(input().translate(direction))
