// LEVEL: LANGUAGE

import std.stdio;

void use(bool fail)
{
    scope (exit) writeln("released");
    if (fail) throw new Exception("bad");
}

void main()
{
    use(false);
    try use(true); catch (Exception) {}
}
