from max.algorithm.backend.cpu import parallelize
from std.time import sleep
from std.utils.lock import BlockingSpinLock


def main():
    var a = BlockingSpinLock()
    var b = BlockingSpinLock()

    def transfer(t: Int) {mut a, mut b}:
        if t == 0:
            a.lock(0)
            sleep(0.1)
            b.lock(0)
            b.unlock(0)
            a.unlock(0)
        else:
            b.lock(1)
            sleep(0.1)
            a.lock(1)
            a.unlock(1)
            b.unlock(1)

    parallelize(transfer, 2)
    print("finished")
