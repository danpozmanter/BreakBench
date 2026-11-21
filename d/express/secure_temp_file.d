// LEVEL: STD

import std.stdio;

void main()
{
    auto f = File.tmpfile();
    f.write("ok");
    f.rewind();
    writeln(f.readln());
}
