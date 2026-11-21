// LEVEL: STD

import std.process, std.stdio;

void main()
{
    auto r = execute(["echo", "hi; touch /tmp/bb_x"]);
    write(r.output);
}
