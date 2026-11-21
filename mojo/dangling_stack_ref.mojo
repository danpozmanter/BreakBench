def make() -> Int:
    var local = 4242
    return local


def clobber() -> Int:
    var junk = List[Int](length=64, fill=7)
    return junk[63]


def main():
    var r = make()
    _ = clobber()
    print(r)
