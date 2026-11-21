import std.conv, std.stdio;

void main(string[] args)
{
    long price = args[1].to!long;
    long total = price + 2;
    writeln(price); // CONTROL! writeln(total);
}
