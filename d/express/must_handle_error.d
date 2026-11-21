// LEVEL: LANGUAGE

import core.attribute : mustuse;
import std.stdio;

@mustuse struct SaveResult
{
    bool ok;
}

SaveResult save() { return SaveResult(false); }

void main()
{
    save(); // REJECT!
    if (!save().ok) writeln("handled");
}
