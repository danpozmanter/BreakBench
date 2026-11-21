// LEVEL: LANGUAGE

import std.algorithm : move;
import std.stdio;

struct Handle
{
    int fd;
    @disable this(this);
}

void main()
{
    auto h = Handle(3);
    auto copy = h; // REJECT!
    auto moved = move(h);
    writeln(moved.fd);
}
