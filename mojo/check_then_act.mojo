from max.algorithm.backend.cpu import parallelize
from std.utils.lock import BlockingSpinLock

def main():
    var state_lock = BlockingSpinLock()
    var gate_lock = BlockingSpinLock()
    var claimed = False
    var winners = 0
    var arrivals = 0

    def claim(t: Int) {mut state_lock, mut gate_lock, mut claimed, mut winners, mut arrivals}:
        var available = False
        state_lock.lock(t)
        available = not claimed
        # CONTROL! if available: claimed = True
        state_lock.unlock(t)
        gate_lock.lock(t); arrivals += 1; gate_lock.unlock(t)
        while True:
            gate_lock.lock(t); var open = arrivals == 2; gate_lock.unlock(t)
            if open: break
        if available:
            state_lock.lock(t); claimed = True; winners += 1; state_lock.unlock(t)

    parallelize(claim, 2)
    print(winners)
