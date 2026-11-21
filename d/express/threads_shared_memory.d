// LEVEL: STD

import core.thread, std.stdio;

__gshared int[10] slots;

void main()
{
    auto a = new Thread({ foreach (i; 0 .. 5) slots[i] = i; }).start();
    auto b = new Thread({ foreach (i; 5 .. 10) slots[i] = i; }).start();
    a.join();
    b.join();
    int sum = 0;
    foreach (x; slots) sum += x;
    writeln(sum);
}
