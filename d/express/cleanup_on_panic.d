// LEVEL: LANGUAGE

import std.stdio;

void work()
{
    scope (exit) writeln("cleanup");
    throw new Exception("boom");
}

void main()
{
    try work(); catch (Exception) writeln("recovered");
}
