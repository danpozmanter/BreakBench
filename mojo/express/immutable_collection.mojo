# LEVEL: LANGUAGE

def show(xs: List[Int]):
    xs.append(4) # REJECT!
    print(len(xs))


def main():
    show([1, 2, 3])
