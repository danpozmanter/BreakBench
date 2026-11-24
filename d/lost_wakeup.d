import core.sync.condition, core.sync.mutex, core.thread, std.stdio;

void main()
{
    auto lock = new Mutex;
    auto woken = new Condition(lock);
    // CONTROL! bool ready = false;
    synchronized (lock) woken.notify(); // CONTROL! synchronized (lock) { ready = true; woken.notify(); }
    auto worker = new Thread({
        synchronized (lock) woken.wait(); // CONTROL! synchronized (lock) while (!ready) woken.wait();
        writeln("done");
    });
    worker.start();
    worker.join();
}
