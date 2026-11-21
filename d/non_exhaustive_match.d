import std.conv, std.stdio;

enum Color { red, green, blue }

string name(Color c)
{
    switch (c)
    {
        case Color.red: return "red";
        case Color.green: return "green";
        // CONTROL! default: return "blue";
    }
}

void main(string[] args)
{
    writeln(name(cast(Color) args[1].to!int));
}
