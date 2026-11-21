import std.conv, std.stdio;

void main(string[] args)
{
    int n = args[1].to!int;
    string name;
    switch (n)
    {
        case 1:
            name = "one";
            // CONTROL! break;
        case 2:
            name = "two";
            break;
        default:
            name = "other";
    }
    writeln(name);
}
