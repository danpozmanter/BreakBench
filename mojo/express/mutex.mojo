# LEVEL: STD

from max.algorithm.backend.cpu import parallelize
from std.utils.lock import BlockingSpinLock


def main():
    var lock = BlockingSpinLock()
    var counter = 0

    def work(t: Int) {mut lock, mut counter}:
        for _ in range(100_000):
            lock.lock(t)
            counter += 1
            lock.unlock(t)

    parallelize(work, 2)
    print(counter)
