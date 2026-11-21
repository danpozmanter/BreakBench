import std.conv, std.stdio;

bool isOdd(long n)
{
    return n % 2 == 1;
}

void main(string[] args)
{
    writeln(isOdd(args[1].to!long) ? "odd" : "even");
}
