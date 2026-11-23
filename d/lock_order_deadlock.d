import core.sync.mutex, core.sync.condition, core.thread, std.stdio;

__gshared Mutex a, b;
__gshared Mutex gateMutex;
__gshared Condition gate;
__gshared int arrivals;

void rendezvous()
{
    gateMutex.lock();
    ++arrivals;
    if (arrivals == 2) gate.notifyAll();
    else while (arrivals < 2) gate.wait();
    gateMutex.unlock();
}

void transfer(Mutex first, Mutex second)
{
    first.lock();
    scope (exit) first.unlock();
    rendezvous();
    second.lock();
    scope (exit) second.unlock();
}

void main()
{
    a = new Mutex();
    b = new Mutex();
    gateMutex = new Mutex();
    gate = new Condition(gateMutex);
    auto t1 = new Thread({ transfer(a, b); }).start();
    auto t2 = new Thread({ transfer(b, a); }).start();
    t1.join();
    t2.join();
    writeln("finished");
}
