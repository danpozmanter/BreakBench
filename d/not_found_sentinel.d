import std.stdio, std.string;

void main(string[] args)
{
    auto line = args[1];
    auto pos = line.indexOf(':');
    writeln(line[pos + 1 .. $]);
}
