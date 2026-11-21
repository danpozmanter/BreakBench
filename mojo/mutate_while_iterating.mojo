def main():
    var xs: List[Int] = [1, 2, 2, 3]
    for x in xs:
        if x == 2:
            for i in range(len(xs)):
                if xs[i] == x:
                    _ = xs.pop(i)
                    break
    var out = String()
    for i in range(len(xs)):
        if i > 0:
            out += ","
        out += String(xs[i])
    print(out)
