import core.sync.condition, core.sync.mutex, core.thread, std.stdio;

void main()
{
    auto lock = new Mutex;
    auto woken = new Condition(lock);
    synchronized (lock) woken.notify();
    auto worker = new Thread({
        synchronized (lock) woken.wait();
        writeln("done");
    });
    worker.start();
    worker.join();
}
