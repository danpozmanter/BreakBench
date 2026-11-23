from std.sys import argv


def main() raises:
    var count = atol(argv()[1])
    var total = 0
    with open("/dev/zero", "r") as source:
        for _ in range(count):
            var message = source.read_bytes(4096)
            total += len(message)
    print(total)
