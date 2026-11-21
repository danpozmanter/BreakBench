// LEVEL: LANGUAGE

import std.stdio;

class KindA : Exception { this() { super("A"); } }
class KindB : Exception { this() { super("B"); } }

void step(bool a)
{
    try
    {
        if (a) throw new KindA(); else throw new KindB();
    }
    catch (KindA)
        writeln("caught A");
}

void main()
{
    step(true);
    try step(false);
    catch (KindB)
        writeln("passed B");
}
