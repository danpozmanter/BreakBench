// LEVEL: LANGUAGE

import std.stdio;

void main(string[] args)
{
    writeln("before");
    stdout.flush();
    assert(args.length + 1 == 3);
    writeln("after");
}
