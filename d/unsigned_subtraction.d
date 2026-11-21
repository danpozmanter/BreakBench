import std.stdio;

enum HEADER = 5;

void main(string[] args)
{
    auto message = args[1];
    auto payload = message.length - HEADER;
    if (payload < 0)
        writeln("short");
    else
        writeln(payload);
}
