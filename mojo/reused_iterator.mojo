def main():
    var xs: List[Int] = [1, 2, 3, 4, 5, 6]
    var evens = List[Int]()
    for x in xs:
        if x % 2 == 0:
            evens.append(x)
    var total = 0
    for x in evens:
        total += x
    print(total, len(evens))
