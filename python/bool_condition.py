def compare(a, b):
    return (a > b) - (a < b)


if compare("x", "x"):
    print("same")
else:
    print("different")
