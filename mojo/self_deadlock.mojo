from std.utils.lock import BlockingSpinLock


def deposit(mut lock: BlockingSpinLock, mut balance: Int, amount: Int):
    lock.lock(0)
    balance += amount
    _ = lock.unlock(0)


def main():
    var lock = BlockingSpinLock()
    var balance = 0
    lock.lock(0) # BREAK!
    deposit(lock, balance, 10)
    _ = lock.unlock(0) # BREAK!
    print("done")
