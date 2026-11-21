def compare(a: String, b: String) -> Int:
    return 0 if a == b else 1


def main():
    if compare("x", "x"): # CONTROL! if compare("x", "x") == 0:
        print("same")
    else:
        print("different")
