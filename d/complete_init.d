import std.stdio;

struct Config { int timeout; int retries; }

void main()
{
    Config c = {timeout: 30}; // CONTROL! Config c = {timeout: 30, retries: 3};
    writeln(c.retries);
}
