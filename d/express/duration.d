// LEVEL: STD

import core.time, std.stdio;

void main()
{
    auto total = 1500.msecs + 500.msecs;
    auto wrong = total + 5; // REJECT!
    writeln(total.total!"msecs");
}
