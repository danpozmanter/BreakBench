from max.algorithm.backend.cpu import parallelize
from std.utils.lock import BlockingSpinLock


def main():
    var a = BlockingSpinLock()
    var b = BlockingSpinLock()
    var gate = BlockingSpinLock()
    var arrivals = 0

    def rendezvous(t: Int) {mut gate, mut arrivals}:
        gate.lock(t); arrivals += 1; gate.unlock(t)
        while True:
            gate.lock(t); var open = arrivals == 2; gate.unlock(t)
            if open: break

    def transfer(t: Int) {mut a, mut b, mut gate, mut arrivals}:
        if t == 0:
            a.lock(0)
            rendezvous(0)
            b.lock(0)
            b.unlock(0)
            a.unlock(0)
        else:
            b.lock(1)
            rendezvous(1)
            a.lock(1)
            a.unlock(1)
            b.unlock(1)

    parallelize(transfer, 2)
    print("finished")
