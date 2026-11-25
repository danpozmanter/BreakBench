import std.array, std.conv, std.stdio;

int parseOrder(string line)
{
    auto parts = line.split(",");
    return parts[2].to!int; // BREAK!
    // CONTROL! return parts[1].to!int;
}

void main()
{
    try
        writeln(parseOrder("widget,5"));
    catch (Exception e)
        writeln("invalid order");
}
