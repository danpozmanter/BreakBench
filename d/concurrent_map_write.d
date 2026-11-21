import core.thread, std.stdio;

Thread writer(long[long]* table, long base)
{
    return new Thread(() {
        foreach (k; 0 .. 100_000L) (*table)[base + k] = k;
    });
}

void main()
{
    long[long] table;
    table[-1] = 0;
    table.remove(-1);
    Thread[] threads;
    foreach (t; 0 .. 8) threads ~= writer(&table, t * 100_000L).start();
    foreach (t; threads) t.join();
    writeln(table.length);
}
