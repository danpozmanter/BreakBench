// LEVEL: LANGUAGE

import std.stdio;

enum Color { red, green, blue }

string name(Color c)
{
    final switch (c)
    {
    case Color.red: return "red";
    case Color.green: return "green";
    case Color.blue: return "blue";
    }
}

void main()
{
    Color c = Color.green;
    writeln(name(7)); // REJECT!
    writeln(name(c));
}
