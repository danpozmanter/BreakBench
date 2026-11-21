from std.sys import argv


def main() raises:
    var readings: List[Int] = [10, 20, 30]
    var i = atol(argv()[1])
    print(readings[i] - readings[i - 1])
