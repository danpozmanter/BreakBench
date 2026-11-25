import std.conv, std.stdio;

string size(int n)
{
    string label = "small";
    if (n > 5); // CONTROL! if (n > 5)
    {
        label = "big";
    }
    return label;
}

void main(string[] args)
{
    writeln(size(args[1].to!int));
    writeln(size(args[2].to!int));
}
