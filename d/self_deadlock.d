import core.sync.mutex, std.stdio;

__gshared Mutex lock;
__gshared int balance;

void deposit(int amount)
{
    lock.lock();
    scope (exit) lock.unlock();
    balance += amount;
}

void main()
{
    lock = new Mutex();
    lock.lock();
    deposit(10);
    lock.unlock();
    writeln("done");
}
