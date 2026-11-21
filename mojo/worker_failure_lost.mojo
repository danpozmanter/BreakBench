from max.algorithm.backend.cpu import parallelize
from std.sys import argv


def main() raises:
    var items = List[String]()
    for i in range(1, len(argv())):
        items.append(String(argv()[i]))
    var total = 0

    def worker(t: Int) {mut total, imm items}:
        for item in items:
            total += atol(item)  # CONTROL! total += item.byte_length()

    parallelize(worker, 1)
    print("total", total)
