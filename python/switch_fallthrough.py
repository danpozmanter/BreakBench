import sys

n = int(sys.argv[1])
match n:
    case 1:
        name = "one"
    case 2:
        name = "two"
    case _:
        name = "other"
print(name)
