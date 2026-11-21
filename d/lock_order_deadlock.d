import core.sync.mutex, core.thread, std.stdio;
import core.time : msecs;

__gshared Mutex a, b;

void transfer(Mutex first, Mutex second)
{
    first.lock();
    scope (exit) first.unlock();
    Thread.sleep(100.msecs);
    second.lock();
    scope (exit) second.unlock();
}

void main()
{
    a = new Mutex();
    b = new Mutex();
    auto t1 = new Thread({ transfer(a, b); }).start();
    auto t2 = new Thread({ transfer(b, a); }).start();
    t1.join();
    t2.join();
    writeln("finished");
}
