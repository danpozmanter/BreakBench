import std.conv, std.stdio;

enum Color { red, green, blue }

void main(string[] args)
{
    writeln("before");
    try
        writeln(args[1].to!int.to!Color);
    catch (ConvException)
        writeln("invalid");
}
