// LEVEL: LANGUAGE

import std.stdio;

string describe(string s)
{
    switch (s)
    {
    case "circle": return "circle";
    default: return "other";
    }
}

string bad(string s) { switch (s) { case "circle": return "circle"; case "circle": return "again"; default: return "other"; } } // REJECT!

void main() { writeln(describe("square")); }
