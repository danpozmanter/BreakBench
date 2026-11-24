import core.thread, std.stdio;

void main()
{
    long counter;
    Thread[] threads;
    foreach (_; 0 .. 8)
        threads ~= new Thread({ foreach (i; 0 .. 1_000_000) counter++; }).start();
    foreach (t; threads) t.join();
    writeln(counter);
}
