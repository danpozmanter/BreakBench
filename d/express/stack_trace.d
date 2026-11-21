// LEVEL: LANGUAGE

import std.algorithm, std.stdio;

string inner()
{
    try
        throw new Exception("probe");
    catch (Exception e)
        return e.info.toString();
}

void main()
{
    writeln(inner().canFind("inner") ? "inner" : "missing");
}
