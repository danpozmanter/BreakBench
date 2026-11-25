import std.conv, std.stdio;

int totalUntilStop(string[] codes)
{
    int total = 0;
    foreach (c; codes)
    {
        int code = c.to!int;
        switch (code)
        {
            case 0:
                break; // CONTROL! return total;
            default:
                total += code;
                break;
        }
    }
    return total;
}

void main(string[] args)
{
    writeln(totalUntilStop(args[1 .. $]));
}
