from std.sys import argv


# Mojo has no standard call for the maximum of a list; this is the usual loop.
def main() raises:
    var xs = List[Int]()
    for i in range(1, len(argv())):
        xs.append(atol(argv()[i]))
    # CONTROL! if len(xs) == 0: print("no readings"); return
    var m = xs[0]
    for x in xs:
        if x > m:
            m = x
    print(m + 1)
