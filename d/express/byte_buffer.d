// LEVEL: STD

import std.array, std.stdio;

void main()
{
    auto buf = appender!(ubyte[])();
    foreach (i; 0 .. 100_000) buf.put(cast(ubyte) i);
    writeln(buf[].length);
}
