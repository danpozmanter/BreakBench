// LEVEL: STD

import std.process, std.stdio;

void main()
{
    writeln("BB_UNSET" in environment ? "present" : "absent");
}
