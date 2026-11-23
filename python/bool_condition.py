def compare(a: str, b: str) -> int:
    return (a > b) - (a < b)


if compare("x", "x"):
    print("same")
else:
    print("different")
