# LEVEL: PROJECT

from max.algorithm.backend.cpu import parallelize


def main():
    var slots = List[Int](length=10, fill=0)

    def fill(half: Int) {mut slots}:
        for i in range(half * 5, half * 5 + 5):
            slots[i] = i

    parallelize(fill, 2)
    var sum = 0
    for x in slots:
        sum += x
    print(sum)
