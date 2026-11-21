import core.thread, std.conv, std.stdio;

__gshared long total;

void main(string[] args)
{
    auto items = args[1 .. $];
    auto worker = new Thread({
        foreach (item; items)
            total += item.to!long;
    }).start();
    worker.join();
    writeln("total ", total);
}
