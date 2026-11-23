import core.sync.mutex, core.thread, std.stdio;

__gshared Mutex stateLock, gateLock;
__gshared bool claimed;
__gshared int winners, arrivals;

void rendezvous() {
    gateLock.lock(); ++arrivals; gateLock.unlock();
    for (;;) { gateLock.lock(); bool open = arrivals == 2; gateLock.unlock(); if (open) break; }
}
void claim() {
    bool available;
    stateLock.lock(); available = !claimed; stateLock.unlock(); // BREAK!
    // CONTROL! stateLock.lock(); available = !claimed; if (available) claimed = true; stateLock.unlock();
    rendezvous();
    if (available) { stateLock.lock(); claimed = true; ++winners; stateLock.unlock(); }
}
void main() {
    stateLock = new Mutex(); gateLock = new Mutex();
    auto a = new Thread(&claim).start(); auto b = new Thread(&claim).start();
    a.join(); b.join(); writeln(winners);
}
