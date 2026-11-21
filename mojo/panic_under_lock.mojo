from max.algorithm.backend.cpu import parallelize
from std.utils.lock import BlockingSpinLock


def main():
    var lock = BlockingSpinLock()
    var debits = 0
    var credits = 0

    def post(t: Int) {mut lock, mut debits, mut credits}:
        lock.lock(t)
        debits += 50
        if debits > 0: raise Error("crash mid-update")  # BREAK!
        credits += 50
        lock.unlock(t)

    parallelize(post, 1)
    lock.lock(0)
    print("balanced" if debits == credits else "unbalanced")
    lock.unlock(0)
