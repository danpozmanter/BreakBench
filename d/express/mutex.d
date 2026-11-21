// LEVEL: STD

import core.sync.mutex, core.thread, std.stdio;

__gshared long counter;

void main()
{
    auto lock = new Mutex();
    void work() { foreach (i; 0 .. 100_000) { lock.lock(); counter++; lock.unlock(); } }
    auto a = new Thread(&work).start();
    auto b = new Thread(&work).start();
    a.join();
    b.join();
    writeln(counter);
}
