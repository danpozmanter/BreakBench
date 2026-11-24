import std.stdio;

void check()
{
    writeln("ok");
    return; // BREAK!
    writeln("checked");
}

void main() { check(); }
