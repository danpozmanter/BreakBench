from std.sys import argv


def main() raises:
    var ids: List[Int] = [10, 20, 30]
    var id = String(argv()[1])
    print("found" if id in ids else "missing") # CONTROL! print("found" if atol(id) in ids else "missing")
