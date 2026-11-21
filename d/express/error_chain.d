// LEVEL: STD

import std.stdio;

void main()
{
    auto cause = new Exception("not found");
    auto e = new Exception("loading config: not found", __FILE__, __LINE__, cause);
    writeln(e.msg);
    writeln(e.next.msg);
}
