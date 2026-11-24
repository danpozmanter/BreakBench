import core.sync.mutex, core.thread, std.stdio;

__gshared Mutex lock;
__gshared int debits, credits;

void post()
{
    lock.lock();
    scope (exit) lock.unlock();
    debits += 50;
    if (debits > 0)
        throw new Exception("crash mid-update"); // CONTROL! { debits -= 50; throw new Exception("crash mid-update"); }
    credits += 50;
}

void main()
{
    lock = new Mutex();
    auto worker = new Thread(&post).start();
    try
        worker.join();
    catch (Exception e)
        stderr.writeln("worker failed: ", e.msg);
    lock.lock();
    scope (exit) lock.unlock();
    writeln(debits == credits ? "balanced" : "unbalanced");
}
