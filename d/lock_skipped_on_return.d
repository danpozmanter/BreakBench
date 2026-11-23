import core.sync.mutex, core.thread, std.stdio;

__gshared Mutex lock;
__gshared int balance = 100;

void withdraw(int amount)
{
    lock.lock();
    if (amount > balance)
        return;
    balance -= amount;
    lock.unlock();
}

void main()
{
    lock = new Mutex;
    withdraw(500);
    auto worker = new Thread({ withdraw(30); });
    worker.start();
    worker.join();
    writeln(balance);
}
