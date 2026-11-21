import core.thread, std.stdio;

void main()
{
    long count = 0;
    auto a = new Thread({ foreach (i; 0 .. 1_000_000) count++; });
    auto b = new Thread({ foreach (i; 0 .. 1_000_000) count++; });
    a.start();
    b.start();
    a.join();
    b.join();
    writeln(count);
}
