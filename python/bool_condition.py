def compare(a: str, b: str) -> int:
    return (a > b) - (a < b)


if compare("x", "x"): # CONTROL! if compare("x", "x") == 0:
    print("same")
else:
    print("different")
