from max.algorithm.backend.cpu import parallelize
from std.utils.lock import BlockingSpinLock


def withdraw(mut lock: BlockingSpinLock, mut balance: Int, amount: Int, owner: Int):
    lock.lock(owner)
    if amount > balance:
        return # CONTROL! _ = lock.unlock(owner); return
    balance -= amount
    _ = lock.unlock(owner)


def main():
    var lock = BlockingSpinLock()
    var balance = 100
    withdraw(lock, balance, 500, 0)

    def worker(t: Int) {mut lock, mut balance}:
        withdraw(lock, balance, 30, t + 1)

    parallelize(worker, 1)
    print(balance)
