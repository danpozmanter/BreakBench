from std.sys import argv


def main() raises:
    var text = String(argv()[1])
    var counts = List[Int](length=256, fill=0)
    for b in text.as_bytes():
        counts[Int(b)] += 1
    var high = 0
    for i in range(128, 256):
        high += counts[i]
    print(high)
