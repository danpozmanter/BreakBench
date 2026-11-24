from max.algorithm.backend.cpu import parallelize
from std.utils.lock import BlockingSpinLock


def rendezvous(mut gate: BlockingSpinLock, mut arrivals: Int, t: Int):
    gate.lock(t); arrivals += 1; _ = gate.unlock(t)
    while True:
        gate.lock(t); var open = arrivals == 2; _ = gate.unlock(t)
        if open: break


def main():
    var a = BlockingSpinLock()
    var b = BlockingSpinLock()
    var gate = BlockingSpinLock()
    var arrivals = 0

    def transfer(t: Int) {mut a, mut b, mut gate, mut arrivals}:
        if t == 0:
            a.lock(0)
            rendezvous(gate, arrivals, 0) # BREAK!
            b.lock(0)
            b.unlock(0)
            a.unlock(0)
        else:
            b.lock(1) # CONTROL! a.lock(1)
            rendezvous(gate, arrivals, 1) # BREAK!
            a.lock(1) # CONTROL! b.lock(1)
            a.unlock(1) # CONTROL! b.unlock(1)
            b.unlock(1) # CONTROL! a.unlock(1)

    parallelize(transfer, 2)
    print("finished")
