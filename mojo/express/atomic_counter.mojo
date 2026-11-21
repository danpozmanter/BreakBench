# LEVEL: STD

from std.atomic import Atomic
from max.algorithm.backend.cpu import parallelize


def main():
    var counter = Atomic[Int64](0)

    def work(i: Int) {mut counter}:
        for _ in range(100_000):
            _ = counter.fetch_add(1)

    parallelize(work, 2)
    print(counter.load())
