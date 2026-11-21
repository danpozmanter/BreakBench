def count(xs: List[Int]) -> Int:
    xs[0] = 9  # BREAK!
    return len(xs)


def main():
    var xs: List[Int] = [1, 2, 3]
    print(count(xs))
